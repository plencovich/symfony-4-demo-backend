<?php

namespace App\Controller;

use App\Entity\Stops;
use App\Form\StopsType;
use App\Repository\StopsRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/backend/stops")
 */
class StopsController extends AbstractController
{
    /**
     * @Route("/", name="stops_list", methods={"GET"})
     */
    public function index(StopsRepository $stopsRepository): Response
    {
        $page_info = array(
            'title' => 'Paradas',
            'breadcrumb' => array(
                $this->generateUrl('dashboard') => 'Principal',
                'none' => 'Paradas'
            )
        );

        return $this->render('stops/list-all.html.twig', [
            'stops' => $stopsRepository->findAll(),
            'page_info' => $page_info
        ]);
    }

    /**
     * @Route("/new", name="stops_new", methods={"GET","POST"})
     */
    public function new(Request $request): Response
    {
        $stop = new Stops();
        $form = $this->createForm(StopsType::class, $stop);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($stop);
            $entityManager->flush();

            return $this->redirectToRoute('stops_list');
        }

        $page_info = array(
            'title' => 'Paradas',
            'breadcrumb' => array(
                $this->generateUrl('dashboard') => 'Principal',
                $this->generateUrl('stops_list') => 'Paradas',
                'none' => 'Crear'
            )
        );

        return $this->render('stops/new.html.twig', [
            'stop' => $stop,
            'form' => $form->createView(),
            'page_info' => $page_info
        ]);
    }

    /**
     * @Route("/{id}/edit", name="stops_edit", methods={"GET","POST"})
     */
    public function edit(Request $request, Stops $stop): Response
    {
        $form = $this->createForm(StopsType::class, $stop);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('stops_list', [
                'id' => $stop->getId(),
            ]);
        }

        $page_info = array(
            'title' => 'Paradas',
            'breadcrumb' => array(
                $this->generateUrl('dashboard') => 'Principal',
                $this->generateUrl('stops_list') => 'Paradas',
                'none' => 'Editar'
            )
        );

        return $this->render('stops/edit.html.twig', [
            'stop' => $stop,
            'form' => $form->createView(),
            'page_info' => $page_info
        ]);
    }

    /**
     * @Route("/{id}", name="stops_delete", methods={"DELETE"})
     */
    public function delete(Request $request, Stops $stop): Response
    {
        if ($this->isCsrfTokenValid('delete'.$stop->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($stop);
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
