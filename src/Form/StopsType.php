<?php

namespace App\Form;

use App\Entity\Stops;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;

class StopsType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('name')
            ->add('keyname')
            ->add('address')
            ->add('position')
            ->add('time_trip')
            ->add('price')
            ->add('price_card')
            ->add('fixed_point', ChoiceType::class,
                array(
                    'choices'  => array(
                        'Si' => '1',
                        'No' => '0',

                    )
                )
            )
            ->add('buy_online', ChoiceType::class,
                array(
                    'choices'  => array(
                        'Si' => '1',
                        'No' => '0',

                    )
                )
            )
            ->add('destination')
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Stops::class,
        ]);
    }
}
