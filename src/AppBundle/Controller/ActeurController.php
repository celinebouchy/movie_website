<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Acteur;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;use Symfony\Component\HttpFoundation\Request;

/**
 * Acteur controller.
 *
 * @Route("acteur")
 */
class ActeurController extends Controller
{
    /**
     * Lists all acteur entities.
     *
     * @Route("/", name="acteur_index")
     * @Method("GET")
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $acteurs = $em->getRepository('AppBundle:Acteur')->findAll();

        return $this->render('acteur/index.html.twig', array(
            'acteurs' => $acteurs,
        ));
    }

    /**
     * Creates a new acteur entity.
     *
     * @Route("/new", name="acteur_new")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request)
    {
        $acteur = new Acteur();
        $form = $this->createForm('AppBundle\Form\ActeurType', $acteur);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($acteur);
            $em->flush();

            return $this->redirectToRoute('acteur_show', array('idActeur' => $acteur->getIdacteur()));
        }

        return $this->render('acteur/new.html.twig', array(
            'acteur' => $acteur,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a acteur entity.
     *
     * @Route("/{idActeur}", name="acteur_show")
     * @Method("GET")
     */
    public function showAction(Acteur $acteur)
    {
        $deleteForm = $this->createDeleteForm($acteur);

        return $this->render('acteur/show.html.twig', array(
            'acteur' => $acteur,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing acteur entity.
     *
     * @Route("/{idActeur}/edit", name="acteur_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Request $request, Acteur $acteur)
    {
        $deleteForm = $this->createDeleteForm($acteur);
        $editForm = $this->createForm('AppBundle\Form\ActeurType', $acteur);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('acteur_edit', array('idActeur' => $acteur->getIdacteur()));
        }

        return $this->render('acteur/edit.html.twig', array(
            'acteur' => $acteur,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a acteur entity.
     *
     * @Route("/{idActeur}", name="acteur_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, Acteur $acteur)
    {
        $form = $this->createDeleteForm($acteur);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($acteur);
            $em->flush();
        }

        return $this->redirectToRoute('acteur_index');
    }

    /**
     * Creates a form to delete a acteur entity.
     *
     * @param Acteur $acteur The acteur entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Acteur $acteur)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('acteur_delete', array('idActeur' => $acteur->getIdacteur())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
