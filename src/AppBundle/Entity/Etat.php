<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Etat
 *
 * @ORM\Table(name="etat")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\EtatRepository")
 */
class Etat{

    /**
     * @var int
     *
     * @ORM\Column(name="idEtat", type="integer", unique=true)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $idEtat;

    /**
     * @var string
     *
     * @ORM\Column(name="statut", type="string", length=255)
     */
    private $statut;

    /**
     * Set idEtat
     *
     * @param integer $idEtat
     *
     * @return Etat
     */
    public function setIdEtat($idEtat)
    {
        $this->idEtat = $idEtat;

        return $this;
    }

    /**
     * Get idEtat
     *
     * @return int
     */
    public function getIdEtat()
    {
        return $this->idEtat;
    }

    /**
     * Set statut
     *
     * @param string $statut
     *
     * @return Etat
     */
    public function setStatut($statut)
    {
        $this->statut = $statut;

        return $this;
    }

    /**
     * Get statut
     *
     * @return string
     */
    public function getStatut()
    {
        return $this->statut;
    }
}

