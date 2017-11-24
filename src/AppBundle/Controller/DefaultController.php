<?php

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

//Pour appeler Response()
use Symfony\Component\HttpFoundation\Response;

class DefaultController extends Controller{

    /**
     * @Route("/", name="homepage")
     */
    public function indexAction(Request $request){

        // replace this example code with whatever you need
        return $this->render('default/index.html.twig', [
            'base_dir' => realpath($this->getParameter('kernel.root_dir').'/..').DIRECTORY_SEPARATOR,
        ]);
    }

    /**
     * @Route("membre", name="espace_membre")
     */
    public function espace_membreAction(){
        return $this->render('AppBundle:user:member_space.html.twig');
    }
}
