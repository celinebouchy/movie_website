<?php

namespace AppBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\CheckboxType;

class ActeurType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder->add('prenomActeur', TextType::class, array(
                    'attr' => array(
                        'placeholder' => 'Prénom de l\'acteur',
                    ),
                    'label' => 'Prénom de l\'acteur'
                ))

                ->add('nomActeur', TextType::class, array(
                    'attr' => array(
                        'placeholder' => 'Nom de l\'acteur',
                    ),
                    'label' => 'Nom de l\'acteur'
                ))

                ->add('nomComplet', TextType::class, array(
                    'attr' => array(
                        'placeholder' => 'Nom et prénom de l\'acteur',
                    )
                ))

                ->add('photo', TextType::class, array(
                    'attr' => array(
                        'placeholder' => 'URL de l\'image de l\'acteur',
                    )
                ))

                ->add('films', EntityType::class, array(

                    //Entité liée
                    'class' => 'AppBundle:Film',

                    //Nom du label
                    'choice_label' => 'titre',

                    //Checkbox
                    'multiple' => true,
                    'expanded' => true,
                ));
    }

    /**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'AppBundle\Entity\Acteur'
        ));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'appbundle_acteur';
    }


}
