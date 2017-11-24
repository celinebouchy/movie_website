<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Film
 *
 * @ORM\Table(name="film")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\FilmRepository")
 */
class Film{

    /**
     * @var int
     *
     * @ORM\Column(name="numFilm", type="integer", unique=true)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $numFilm;

    /**
     * @var string
     *
     * @ORM\Column(name="titre", type="string", length=255)
     */
    private $titre;

    /**
     * @var string
     *
     * @ORM\Column(name="description", type="text")
     */
    private $description;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="dateSortie", type="date")
     */
    private $dateSortie;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="duree", type="time")
     */
    private $duree;

    /**
     * @var string
     *
     * @ORM\Column(name="photo", type="text", nullable=true)
     */
    private $photo;

    /**
     * Récupération des acteurs pour un film précis
     *
     * @ORM\ManyToMany(targetEntity="AppBundle\Entity\Acteur", inversedBy="films")
     * @ORM\JoinTable(joinColumns={@ORM\JoinColumn(name="film_id", referencedColumnName="numFilm")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="acteur_id", referencedColumnName="idActeur")}
     *      )
     */
    private $acteurs;

    /**
     * Récupération des catégories pour un film précis
     *
     * @ORM\ManyToMany(targetEntity="AppBundle\Entity\Categorie", inversedBy="films")
     * @ORM\JoinTable(joinColumns={@ORM\JoinColumn(name="film_id", referencedColumnName="numFilm")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="categorie_id", referencedColumnName="idCat")}
     *      )
     */
    private $categories;


    /**
     * Constructor
     */
    public function __construct()
    {
        $this->acteurs = new \Doctrine\Common\Collections\ArrayCollection();
    }

    /**
     * Get numFilm
     *
     * @return integer
     */
    public function getNumFilm()
    {
        return $this->numFilm;
    }

    /**
     * Set titre
     *
     * @param string $titre
     *
     * @return Film
     */
    public function setTitre($titre)
    {
        $this->titre = $titre;

        return $this;
    }

    /**
     * Get titre
     *
     * @return string
     */
    public function getTitre()
    {
        return $this->titre;
    }

    /**
     * Set description
     *
     * @param string $description
     *
     * @return Film
     */
    public function setDescription($description)
    {
        $this->description = $description;

        return $this;
    }

    /**
     * Get description
     *
     * @return string
     */
    public function getDescription()
    {
        return $this->description;
    }

    /**
     * Set dateSortie
     *
     * @param \DateTime $dateSortie
     *
     * @return Film
     */
    public function setDateSortie($dateSortie)
    {
        $this->dateSortie = $dateSortie;

        return $this;
    }

    /**
     * Get dateSortie
     *
     * @return \DateTime
     */
    public function getDateSortie()
    {
        return $this->dateSortie;
    }

    /**
     * Set duree
     *
     * @param \DateTime $duree
     *
     * @return Film
     */
    public function setDuree($duree)
    {
        $this->duree = $duree;

        return $this;
    }

    /**
     * Get duree
     *
     * @return \DateTime
     */
    public function getDuree()
    {
        return $this->duree;
    }

    /**
     * Set photo
     *
     * @param string $photo
     *
     * @return Film
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
     * Add acteur
     *
     * @param \AppBundle\Entity\Acteur $acteur
     *
     * @return Film
     */
    public function addActeur(\AppBundle\Entity\Acteur $acteur)
    {
        $this->acteurs[] = $acteur;

        return $this;
    }

    /**
     * Remove acteur
     *
     * @param \AppBundle\Entity\Acteur $acteur
     */
    public function removeActeur(\AppBundle\Entity\Acteur $acteur)
    {
        $this->acteurs->removeElement($acteur);
    }

    /**
     * Get acteurs
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getActeurs()
    {
        return $this->acteurs;
    }

    /**
     * Add category
     *
     * @param \AppBundle\Entity\Categorie $category
     *
     * @return Film
     */
    public function addCategory(\AppBundle\Entity\Categorie $category)
    {
        $this->categories[] = $category;

        return $this;
    }

    /**
     * Remove category
     *
     * @param \AppBundle\Entity\Categorie $category
     */
    public function removeCategory(\AppBundle\Entity\Categorie $category)
    {
        $this->categories->removeElement($category);
    }

    /**
     * Get categories
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getCategories()
    {
        return $this->categories;
    }
}
