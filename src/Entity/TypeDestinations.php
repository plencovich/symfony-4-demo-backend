<?php

namespace App\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\TypeDestinationsRepository")
 */
class TypeDestinations
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $name;

    /**
     * @ORM\OneToMany(targetEntity="App\Entity\Destinations", mappedBy="type")
     */
    private $destinations;

    /**
     * @ORM\OneToMany(targetEntity="App\Entity\Services", mappedBy="categoryid")
     */
    private $services;

    public function __construct()
    {
        $this->destinations = new ArrayCollection();
        $this->services = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
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

    public function __toString()
    {
        return $this->name;
    }

    /**
     * @return Collection|Destinations[]
     */
    public function getDestinations(): Collection
    {
        return $this->destinations;
    }

    public function getServices(): Collection
    {
        return $this->services;
    }

    public function addDestination(Destinations $destination): self
    {
        if (!$this->destinations->contains($destination)) {
            $this->destinations[] = $destination;
            $destination->setType($this);
        }

        return $this;
    }

    public function addService(Services $services): self
    {
        if (!$this->services->contains($services)) {
            $this->services[] = $services;
            $service->setType($this);
        }

        return $this;
    }

    public function removeDestination(Destinations $destination): self
    {
        if ($this->destinations->contains($destination)) {
            $this->destinations->removeElement($destination);
            // set the owning side to null (unless already changed)
            if ($destination->getType() === $this) {
                $destination->setType(null);
            }
        }

        return $this;
    }
}
