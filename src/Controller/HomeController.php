<?php

namespace App\Controller;

use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class HomeController extends AbstractController
{
/**
 * @Route("/", name="frontend")
 */
    public function index(Request $request)
    {
        return $this->render('home/main.html.twig');

    }

}
?>
