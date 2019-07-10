<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Security;
use App\Entity\User;
use FOS\UserBundle\Event\GetResponseUserEvent;
use FOS\UserBundle\FOSUserEvents;
use FOS\UserBundle\Event\FormEvent;
use Symfony\Component\HttpFoundation\RedirectResponse;
use FOS\UserBundle\Event\FilterUserResponseEvent;
use Symfony\Component\HttpFoundation\JsonResponse;

/**
 * @Route("/backend/users")
 */
class UsersController extends Controller
{
    /**
     * @Route("/add", name="users_add")
     * @Security("is_granted('ROLE_ADMIN')")
     */
    public function userAdd(Request $request)
    {

        $user = new User;
        $form = $this->CreateForm('App\Form\UserType', $user);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {

            $password = $this->get('security.password_encoder')
                ->encodePassword($user, $user->getPlainPassword());
            $user->setPassword($password);

            $em = $this->getDoctrine()->getManager();
            $em->persist($user);
            $em->flush();

            return $this->redirectToRoute('users_list');
        }

        $page_info = array(
            'title' => 'Agregar Usuario',
            'breadcrumb' => array(
                $this->generateUrl('dashboard') => 'Principal',
                $this->generateUrl('users_list') => 'Usuarios',
                'none' => 'Agregar'
            )
        );

        return $this->render('users/new.html.twig',
            array(
                'page_info' => $page_info,
                'form'=>$form->createView(),
            )
        );
    }

    /**
     * @Route("/", name="users_list")
     * @Security("is_granted('ROLE_ADMIN')")
     */
    public function usersList(Request $request)
    {
        $em = $this->getDoctrine()->getManager('default');
        $query = $em->createQuery('SELECT m
                  FROM App:User m
                  ORDER BY m.id ASC');

        $data['users'] = $query->getResult();

        $page_info = array(
            'title' => 'Usuarios',
            'breadcrumb' => array(
                $this->generateUrl('dashboard') => 'Principal',
                'none' => 'Usuarios'
            )
        );

        return $this->render('users/list-all.html.twig',
            array(
                'data'=>$data,
                'page_info' => $page_info
            )
        );
    }

    /**
     * @Route("/edit/", name="users_edit")
     * @Security("is_granted('ROLE_ADMIN')")
     */
    public function userEdit(Request $request)
    {
        $usuarioid = $request->query->get('usuarioid');

        $em = $this->getDoctrine()->getManager('default');

        $userRepository = $em->getRepository('App:User');
        $user = $userRepository->findOneBy(array('id'=>"$usuarioid"));

        $form = $this->CreateForm('App\Form\UserType', $user);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {

            if($user->getPlainPassword() != null) {

                $password = $this->get('security.password_encoder')
                    ->encodePassword($user, $user->getPlainPassword());

                $clave = 'CLAVE DE ACCESO DEL USUARIO HA SIDO MODIFICADA';
                $user->setPassword($password);
            }

            if($user->getPlainPassword() == null) {
                $clave = 'N/A';
            }

            $em = $this->getDoctrine()->getManager();
            $em->persist($user);
            $em->flush();

            return $this->redirectToRoute('users_list');
        }

        $page_info = array(
            'title' => 'Editar Usuario',
            'breadcrumb' => array(
                $this->generateUrl('dashboard') => 'Principal',
                $this->generateUrl('users_list') => 'Usuarios',
                'none' => 'Editar'
            )
        );

        return $this->render('users/edit.html.twig', array(
           'form'=>$form->createView(),
            'page_info' => $page_info
        ));
    }
}
