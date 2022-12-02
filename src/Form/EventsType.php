<?php

namespace App\Form;

use App\Entity\Events;

use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\DateTimeType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\NumberType;
use Symfony\Component\Form\FormBuilderInterface;

class EventsType extends AbstractType
{
  public function buildForm(FormBuilderInterface $builder, array $options): void
  {
      $builder
          ->add('name', TextType::class, [
              'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px']
          ])
          ->add('time', DateTimeType::class, [
              'attr' => ['style' => 'margin-bottom:15px; margin: 10px; padding: 10px;']
          ])
          ->add('description', TextType::class, [
            'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px']
          ])
          ->add('image', TextType::class, [
              'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px']
          ])
          ->add('capacity', NumberType::class, [
            'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px']
          ])
          ->add('email', TextType::class, [
              'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px']
          ])
          ->add('phone', NumberType::class, [
            'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px']
          ])
          ->add('address', TextType::class, [
            'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px']
          ])
          ->add('url', TextType::class, [
            'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px']
          ])
          ->add('eventtype', ChoiceType::class, [
              'choices' => ['Sport' => 'Sport', 'Theatre' => 'Theatre', 'Movie' => 'Movie', 'Music' => 'Music'],
              'attr' => ['class' => 'form-select', 'style' => 'margin-bottom:15px']
          ])
          ->add('save', SubmitType::class, [
              'label' => 'Create event',
              'attr' => ['class' => 'btn btn-primary mt-3', 'style' => 'margin-bottom:15px']
          ]);
  }

  public function configureOptions(OptionsResolver $resolver): void
  {
      $resolver->setDefaults([
          'data_class' => Events::class,
      ]);
  }
}