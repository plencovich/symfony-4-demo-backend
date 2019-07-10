<?php

namespace App\Form;

use App\Entity\Destinations;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class DestinationsType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('name')
            ->add('name_sales')
            ->add('cnrt_name')
            ->add('cnrt_code')
            ->add('cnrt_hour_start')
            ->add('cnrt_duration')
            ->add('type')
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Destinations::class,
        ]);
    }
}
