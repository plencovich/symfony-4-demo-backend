<?php

namespace App\Controller;

use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class DashboardController extends AbstractController
{
/**
 * @Route("/backend", name="dashboard")
 */
    public function index(Request $request)
    {
        return $this->render('dashboard/main.html.twig');

    }

}
?>
