<?php

namespace App\Controller;

use App\Entity\Cities;
use App\Form\CitiesType;
use App\Repository\CitiesRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/backend/cities")
 */
class CitiesController extends AbstractController
{
    /**
     * @Route("/", name="cities_list", methods={"GET"})
     */
    public function index(CitiesRepository $citiesRepository): Response
    {
        $page_info = array(
            'title' => 'Ciudades',
            'breadcrumb' => array(
                $this->generateUrl('dashboard') => 'Principal',
                'none' => 'Ciudades'
            )
        );
        return $this->render('cities/lista-all.html.twig', [
            'cities' => $citiesRepository->findAll(),
            'page_info' => $page_info
        ]);
    }

    /**
     * @Route("/new", name="cities_new", methods={"GET","POST"})
     */
    public function new(Request $request): Response
    {
        $city = new Cities();
        $form = $this->createForm(CitiesType::class, $city);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($city);
            $entityManager->flush();

            return $this->redirectToRoute('cities_list');
        }

        $page_info = array(
            'title' => 'Ciudades',
            'breadcrumb' => array(
                $this->generateUrl('dashboard') => 'Principal',
                $this->generateUrl('cities_list') => 'Ciudades',
                'none' => 'Crear'
            )
        );
        return $this->render('cities/new.html.twig', [
            'city' => $city,
            'form' => $form->createView(),
            'page_info' => $page_info
        ]);
    }

    /**
     * @Route("/{id}/edit", name="cities_edit", methods={"GET","POST"})
     */
    public function edit(Request $request, Cities $city): Response
    {
        $form = $this->createForm(CitiesType::class, $city);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('cities_list', [
                'id' => $city->getId(),
            ]);
        }

        $page_info = array(
            'title' => 'Editar Ciudad',
            'breadcrumb' => array(
                $this->generateUrl('dashboard') => 'Principal',
                $this->generateUrl('cities_list') => 'Ciudades',
                'none' => 'Editar'
            )
        );

        return $this->render('cities/edit.html.twig', [
            'city' => $city,
            'form' => $form->createView(),
            'page_info' => $page_info
        ]);
    }

    /**
     * @Route("/{id}", name="cities_delete", methods={"DELETE"})
     */
    public function delete(Request $request, Cities $city): Response
    {
        if ($this->isCsrfTokenValid('delete'.$city->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($city);
            $entityManager->flush();

            $data = [
                'status' => TRUE,
                'title' => 'Listo',
                'message' => 'Registro eliminado satisfactoriamente.',
                'redirUrl' => $this->generateUrl('cities_list')
            ];

        } else {
            $data = [
                'status' => FALSE,
                'title' => 'Error',
                'message' => 'Error al eliminar el registro',
                'redirUrl' => NULL
            ];
        }

        return $this->json($data);
    }
}
