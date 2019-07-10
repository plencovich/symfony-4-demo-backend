<?php

namespace App\Controller;

use App\Entity\Destinations;
use App\Form\DestinationsType;
use App\Repository\DestinationsRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/backend/destinations")
 */
class DestinationsController extends AbstractController
{
    /**
     * @Route("/", name="destinations_list", methods={"GET"})
     */
    public function index(DestinationsRepository $destinationsRepository): Response
    {
        $page_info = array(
            'title' => 'Destinos',
            'breadcrumb' => array(
                $this->generateUrl('dashboard') => 'Principal',
                'none' => 'Destinos'
            )
        );
        return $this->render('destinations/list-all.html.twig', [
            'destinations' => $destinationsRepository->findAll(),
            'page_info' => $page_info
        ]);
    }

    /**
     * @Route("/new", name="destinations_new", methods={"GET","POST"})
     */
    public function new(Request $request): Response
    {
        $destination = new Destinations();
        $form = $this->createForm(DestinationsType::class, $destination);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($destination);
            $entityManager->flush();

            return $this->redirectToRoute('destinations_list');
        }

        $page_info = array(
            'title' => 'Destinos',
            'breadcrumb' => array(
                $this->generateUrl('dashboard') => 'Principal',
                $this->generateUrl('destinations_list') => 'Destinos',
                'none' => 'Crear'
            )
        );

        return $this->render('destinations/new.html.twig', [
            'destination' => $destination,
            'form' => $form->createView(),
            'page_info' => $page_info
        ]);
    }

    /**
     * @Route("/{id}/edit", name="destinations_edit", methods={"GET","POST"})
     */
    public function edit(Request $request, Destinations $destination): Response
    {
        $form = $this->createForm(DestinationsType::class, $destination);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('destinations_list', [
                'id' => $destination->getId(),
            ]);
        }

        $page_info = array(
            'title' => 'Destinos',
            'breadcrumb' => array(
                $this->generateUrl('dashboard') => 'Principal',
                $this->generateUrl('destinations_list') => 'Destinos',
                'none' => 'Editar'
            )
        );

        return $this->render('destinations/edit.html.twig', [
            'destination' => $destination,
            'form' => $form->createView(),
            'page_info' => $page_info
        ]);
    }

    /**
     * @Route("/{id}", name="destinations_delete", methods={"DELETE"})
     */
    public function delete(Request $request, Destinations $destination): Response
    {
        if ($this->isCsrfTokenValid('delete'.$destination->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($destination);
            $entityManager->flush();

            $data = [
                'status' => TRUE,
                'title' => 'Listo',
                'message' => 'Registro eliminado satisfactoriamente.',
                'redirUrl' => $this->generateUrl('destinations_list')
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
