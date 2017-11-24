<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Acteur
 *
 * @ORM\Table(name="acteur")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\ActeurRepository")
 */
class Acteur
{
    /**
     * @var int
     *
     * @ORM\Column(name="idActeur", type="integer", unique=true)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $idActeur;

    /**
     * @var string
     *
     * @ORM\Column(name="nomActeur", type="string", length=255)
     */
    private $nomActeur;

    /**
     * @var string
     *
     * @ORM\Column(name="prenomActeur", type="string", length=255)
     */
    private $prenomActeur;

    /**
     * @var string
     *
     * @ORM\Column(name="nomComplet", type="string", length=255)
     */
    private $nomComplet;

    /**
     * @var string
     *
     * @ORM\Column(name="photo", type="text")
     */
    private $photo;

    /**
    * Récupération des films pour un acteur précis
    *
    * @ORM\ManyToMany(targetEntity="AppBundle\Entity\Film", mappedBy="acteurs")
    * @ORM\JoinColumn(nullable=false, name="idActeur", referencedColumnName="idActeur")
    */
    private $films;


    /**
     * Constructor
     */
    public function __construct()
    {
        $this->films = new \Doctrine\Common\Collections\ArrayCollection();
    }

    /**
     * Get idActeur
     *
     * @return integer
     */
    public function getIdActeur()
    {
        return $this->idActeur;
    }

    /**
     * Set nomActeur
     *
     * @param string $nomActeur
     *
     * @return Acteur
     */
    public function setNomActeur($nomActeur)
    {
        $this->nomActeur = $nomActeur;

        return $this;
    }

    /**
     * Get nomActeur
     *
     * @return string
     */
    public function getNomActeur()
    {
        return $this->nomActeur;
    }

    /**
     * Set prenomActeur
     *
     * @param string $prenomActeur
     *
     * @return Acteur
     */
    public function setPrenomActeur($prenomActeur)
    {
        $this->prenomActeur = $prenomActeur;

        return $this;
    }

    /**
     * Get prenomActeur
     *
     * @return string
     */
    public function getPrenomActeur()
    {
        return $this->prenomActeur;
    }

        /**
     * Set nomComplet
     *
     * @param string $nomComplet
     *
     * @return Acteur
     */
    public function setNomComplet($nomComplet)
    {
        $this->nomComplet = $nomComplet;

        return $this;
    }

    /**
     * Get nomComplet
     *
     * @return string
     */
    public function getNomComplet()
    {
        return $this->nomComplet;
    }

    /**
     * Set picture
     *
     * @param string $photo
     *
     * @return Acteur
     */
    public function setPhoto($photo)
    {
        $this->photo = $photo;

        return $this;
    }

    /**
     * Get photo
     *
     * @return string
     */
    public function getPhoto()
    {
        return $this->photo;
    }

    /**
     * Add film
     *
     * @param \AppBundle\Entity\Film $film
     *
     * @return Acteur
     */
    public function addFilm(\AppBundle\Entity\Film $film)
    {
        $this->films[] = $film;

        return $this;
    }

    /**
     * Remove film
     *
     * @param \AppBundle\Entity\Film $film
     */
    public function removeFilm(\AppBundle\Entity\Film $film)
    {
        $this->films->removeElement($film);
    }

    /**
     * Get films
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getFilms()
    {
        return $this->films;
    }
}
