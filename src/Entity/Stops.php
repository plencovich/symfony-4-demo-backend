<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\StopsRepository")
 */
class Stops
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\Destinations", inversedBy="stops")
     * @ORM\JoinColumn(nullable=false)
     */
    private $destination;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $name;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $keyname;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $address;

    /**
     * @ORM\Column(type="smallint")
     */
    private $position;

    /**
     * @ORM\Column(type="float", nullable=true)
     */
    private $time_trip;

    /**
     * @ORM\Column(type="float")
     */
    private $price;

    /**
     * @ORM\Column(type="float", nullable=true)
     */
    private $price_card;

    /**
     * @ORM\Column(type="smallint")
     */
    private $fixed_point;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $lat;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $lng;

    /**
     * @ORM\Column(type="smallint")
     */
    private $buy_online;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getDestination(): ?Destinations
    {
        return $this->destination;
    }

    public function setDestination(?Destinations $destination): self
    {
        $this->destination = $destination;

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

    public function getKeyname(): ?string
    {
        return $this->keyname;
    }

    public function setKeyname(string $keyname): self
    {
        $this->keyname = $keyname;

        return $this;
    }

    public function getAddress(): ?string
    {
        return $this->address;
    }

    public function setAddress(?string $address): self
    {
        $this->address = $address;

        return $this;
    }

    public function getPosition(): ?int
    {
        return $this->position;
    }

    public function setPosition(int $position): self
    {
        $this->position = $position;

        return $this;
    }

    public function getTimeTrip(): ?float
    {
        return $this->time_trip;
    }

    public function setTimeTrip(?float $time_trip): self
    {
        $this->time_trip = $time_trip;

        return $this;
    }

    public function getPrice(): ?float
    {
        return $this->price;
    }

    public function setPrice(float $price): self
    {
        $this->price = $price;

        return $this;
    }

    public function getPriceCard(): ?float
    {
        return $this->price_card;
    }

    public function setPriceCard(?float $price_card): self
    {
        $this->price_card = $price_card;

        return $this;
    }

    public function getFixedPoint(): ?int
    {
        return $this->fixed_point;
    }

    public function setFixedPoint(int $fixed_point): self
    {
        $this->fixed_point = $fixed_point;

        return $this;
    }

    public function getLat(): ?string
    {
        return $this->lat;
    }

    public function setLat(?string $lat): self
    {
        $this->lat = $lat;

        return $this;
    }

    public function getLng(): ?string
    {
        return $this->lng;
    }

    public function setLng(?string $lng): self
    {
        $this->lng = $lng;

        return $this;
    }

    public function getBuyOnline(): ?int
    {
        return $this->buy_online;
    }

    public function setBuyOnline(int $buy_online): self
    {
        $this->buy_online = $buy_online;

        return $this;
    }
}
