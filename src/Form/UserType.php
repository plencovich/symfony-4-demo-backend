<?php

namespace App\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\Extension\Core\Type\RepeatedType;
use Symfony\Component\Form\Extension\Core\Type\PasswordType;

class UserType extends AbstractType
{
    /**
     * @param FormBuilderInterface $builder
     * @param array $options
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder

            ->add('full_name', TextType::class,
                array(
                    'required'   => false,
                    "attr" => array('class' => 'form-control', 'rows'=>2,  'placeholder'=>false)
                )
            )
            ->add('email', EmailType::class,
                array(
                    "attr" => array('class' => 'form-control')
                )
            )
            ->add('username', TextType::class,
                array(
                    "attr" => array('class' => 'form-control')
                )
            )
            ->add('plainPassword', RepeatedType::class,
                array(
                    'type' => PasswordType::class,
                    'invalid_message' => 'The password fields must match.','required'=> false,
                    'options' => array('required'=> false, 'attr' => array('class' => 'form-control col-md-6 col-xs-12')),
                    'first_options'  => array('label' => false, 'required'=> false,),
                    'second_options' => array('label' => 'Confirme Clave:*', 'required'=> false,),
                )
            )
            ->add('enabled', ChoiceType::class,
                array(
                    'attr' => array(
                        'class' => 'form-control'
                    ),
                    'choices'  => array(
                        'Activo' => '1',
                        'Inactivo' => '0',

                    )
                )
            )
            ->add('roles', ChoiceType::class,
                array(
                    'placeholder' => false,
                    'attr' => array(
                        'class' => 'select form-control',
                        'selected' => false
                    ),
                    'choices'  => array(
                        'Administrador' => 'ROLE_ADMIN',
                        'Operador' => 'ROLE_OPERADOR',
                        'Agencia' => 'ROLE_AGENCIA',
                        'Choferes' => 'ROLE_CHOFERES',
                        'Cliente' => 'ROLE_CLIENTE',

                    ),
                    'expanded' => false,
                    'multiple' => true,
                )
            )
            ->add('guardar', SubmitType::class,
                array(
                    'label' => 'Crear Usuario',
                    "attr" => array('class' => 'btn btn-primary btn-sm')
                )
            );
    }

    /**
     * @param OptionsResolver $resolver
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'App\Entity\User'
        ));
    }
}
