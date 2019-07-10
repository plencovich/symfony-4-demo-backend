<?php

namespace App\Controller;

use App\Entity\Services;
use App\Form\ServicesType;
use App\Repository\ServicesRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/backend/services")
 */
class ServicesController extends AbstractController
{
    /**
     * @Route("/new/", name="create_new_service", methods={"GET","POST"})
     */
    public function createNewService(Request $request)
    {
        $services = new Services();
        $form = $this->createForm(ServicesType::class, $services);
        $form->handleRequest($request);


         if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($services);
            $entityManager->flush();

            return $this->redirectToRoute('services_list');
        }

        $page_info = array(
            'title' => 'Servicios',
            'breadcrumb' => array(
                $this->generateUrl('dashboard') => 'Principal',
                $this->generateUrl('services_list') => 'Servicios',
                'none' => 'Crear'
            )
        );
        return $this->render('services/new.html.twig',[
            'form' => $form->createView(),
            'page_info' => $page_info
        ]);
    }

    /**
     * @Route("/", name="services_list", methods={"GET"})
     */
    public function index(ServicesRepository $serviciosRepository)//: Response
    {
        $page_info = array(
            'title' => 'Servicios',
            'breadcrumb' => array(
                $this->generateUrl('dashboard') => 'Principal',
                'none' => 'Servicios'
            )
        );
        return $this->render('services/list-all.html.twig', [
            'services' => $serviciosRepository->findAll(),
            'page_info' => $page_info
        ]);
    }


    /**
     * Returns a JSON string with the JRV of the selected sector with the providen id.
     *
     * @Route("/find-origin-and-destination", name="find_origin_and_destination")
     *
     * @param Request $request
     * @return JsonResponse
     */
    public function setOriginAndDestinationAction(Request $request)
    {
        // Get Entity manager and repository
        $em = $this->getDoctrine()->getManager();
        $placesRepository = $em->getRepository("App:Destinations");

        // Search the neighborhoods that belongs to the city with the given id as GET parameter "cityid"
        $places = $placesRepository->createQueryBuilder("q")
            ->where("q.type = :setcategoryid")
            ->setParameter("setcategoryid", $request->query->get("id"))
            ->getQuery()
            ->getResult();

        // Serialize into an array the data that we need, in this case only name and id
        // Note: you can use a serializer as well, for explanation purposes, we'll do it manually
        $responseArray = array();
        foreach($places as $obj){
            $responseArray[] = array(
                "id" => $obj->getId(),
                "name" => $obj->getName()
            );
        }

        // Return array with structure of the neighborhoods of the providen city id
        return new JsonResponse($responseArray);


    }

}
