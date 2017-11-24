<?php

namespace AppBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\CheckboxType;
use Symfony\Component\Form\Extension\Core\Type\DateType;

class FilmType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder->add('titre', TextType::class, array(
                    'attr' => array(
                        'placeholder' => 'Titre du film',
                    ),
                ))

                ->add('description', TextareaType::class, array(
                    'attr' => array(
                        'placeholder' => 'Synopsis du film',
                    ),
                ))

                ->add('dateSortie')

                ->add('duree')

                ->add('categories', EntityType::class, array(

                    'label' => 'Genre',
                    //Entité liée
                    'class' => 'AppBundle:Categorie',

                    //Nom du label
                    'choice_label' => 'nomCat',

                    //Checkbox
                    'multiple' => true,
                    'expanded' => true,
                ))

                ->add('photo', TextType::class, array(
                    'attr' => array(
                        'placeholder' => 'URL de la couverture du film',
                    ),
                    'required' => false,
                ))

                ->add('acteurs', EntityType::class, array(

                    //Entité liée
                    'class' => 'AppBundle:Acteur',

                    //Nom du label
                    'choice_label' => 'nomComplet',

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
            'data_class' => 'AppBundle\Entity\Film'
        ));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'appbundle_film';
    }


}
