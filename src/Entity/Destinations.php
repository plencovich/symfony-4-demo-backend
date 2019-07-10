<?php

namespace App\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\DestinationsRepository")
 */
class Destinations
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\TypeDestinations", inversedBy="destinations")
     * @ORM\JoinColumn(nullable=false)
     */
    private $type;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $name;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $name_sales;

    /**
     * @ORM\Column(type="json_array", nullable=true)
     */
    private $return_destinations;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $cnrt_name;

    /**
     * @ORM\Column(type="string", length=100, nullable=true)
     */
    private $cnrt_code;

    /**
     * @ORM\Column(type="string", length=20, nullable=true)
     */
    private $cnrt_hour_start;

    /**
     * @ORM\Column(type="string", length=20, nullable=true)
     */
    private $cnrt_duration;

    /**
     * @ORM\OneToMany(targetEntity="App\Entity\Stops", mappedBy="destination")
     */
    private $stops;

    /**
     * @ORM\OneToMany(targetEntity="App\Entity\Services", mappedBy="destination")
     */
    private $destinations;

    /**
     * @ORM\OneToMany(targetEntity="App\Entity\Services", mappedBy="origin")
     */
    private $origin;

    public function __construct()
    {
        $this->stops = new ArrayCollection();
        $this->origin = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getType(): ?TypeDestinations
    {
        return $this->type;
    }

    public function setType(?TypeDestinations $type): self
    {
        $this->type = $type;

        return $this;
    }

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(string $name): self
    {
        $this->name = $name;

        return $this;
    }

    public function getNameSales(): ?string
    {
        return $this->name_sales;
    }

    public function setNameSales(?string $name_sales): self
    {
        $this->name_sales = $name_sales;

        return $this;
    }

    public function getReturnDestinations()
    {
        return $this->return_destinations;
    }

    public function setReturnDestinations($return_destinations): self
    {
        $this->return_destinations = $return_destinations;

        return $this;
    }

    public function getCnrtName(): ?string
    {
        return $this->cnrt_name;
    }

    public function setCnrtName(?string $cnrt_name): self
    {
        $this->cnrt_name = $cnrt_name;

        return $this;
    }

    public function getCnrtCode(): ?string
    {
        return $this->cnrt_code;
    }

    public function setCnrtCode(?string $cnrt_code): self
    {
        $this->cnrt_code = $cnrt_code;

        return $this;
    }

    public function getCnrtHourStart(): ?string
    {
        return $this->cnrt_hour_start;
    }

    public function setCnrtHourStart(?string $cnrt_hour_start): self
    {
        $this->cnrt_hour_start = $cnrt_hour_start;

        return $this;
    }

    public function getCnrtDuration(): ?string
    {
        return $this->cnrt_duration;
    }

    public function setCnrtDuration(?string $cnrt_duration): self
    {
        $this->cnrt_duration = $cnrt_duration;

        return $this;
    }

    public function __toString()
    {
        return $this->name;
    }

    /**
     * @return Collection|Stops[]
     */
    public function getStops(): Collection
    {
        return $this->stops;
    }

    public function addStop(Stops $stop): self
    {
        if (!$this->stops->contains($stop)) {
            $this->stops[] = $stop;
            $stop->setDestination($this);
        }

        return $this;
    }

    public function removeStop(Stops $stop): self
    {
        if ($this->stops->contains($stop)) {
            $this->stops->removeElement($stop);
            // set the owning side to null (unless already changed)
            if ($stop->getDestination() === $this) {
                $stop->setDestination(null);
            }
        }

        return $this;
    }
}
