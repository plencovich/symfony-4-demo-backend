<?php

namespace App\Form;

use App\Entity\Services;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class ServicesType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
           // ->add('name')
           // ->add('name_sales')
           // ->add('cnrt_name')
          //  ->add('cnrt_code')
          //  ->add('cnrt_hour_start')
         //   ->add('cnrt_duration')
            ->add('categoryid')
            ->add('time_and_date')
            ->add('passengers_capacity')
            ->add('origin')
            ->add('destination')
            ->add('aditional_services')
            ->add('additional_observations')
            ->add('service_sub_account_type')
            ->add('fixed_fee')
            ->add('card_fixed_fee')
        ;
     
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Services::class,
        ]);
    }
}
