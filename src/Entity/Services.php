<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\ServicesRepository")
 */
class Services
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\TypeDestinations", inversedBy="services")
     * @ORM\JoinColumn(nullable=false)
     */
    private $categoryid;

    /**
     * @ORM\Column(type="integer")
     */
    private $passengers_capacity;

    /**
     * @ORM\Column(type="string")
     */
    private $time_and_date;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\Destinations", inversedBy="origin")
     * @ORM\JoinColumn(nullable=false)
     */
    private $origin;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\Destinations", inversedBy="destinations")
     * @ORM\JoinColumn(nullable=false)
     */
    private $destination;

    /**
     * @ORM\Column(type="string", length=3000, nullable=true)
     */
    private $aditional_services;

    /**
     * @ORM\Column(type="string", length=3500, nullable=true)
     */
    private $additional_observations;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\TypeSubaccount", inversedBy="accountservice")
     * @ORM\JoinColumn(nullable=false)
     */
    private $service_sub_account_type;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $fixed_fee;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $card_fixed_fee;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getCategoryid(): ?TypeDestinations
    {
        return $this->categoryid;
    }

    public function setCategoryid(?TypeDestinations $categoryid): self
    {
        $this->categoryid = $categoryid;

        return $this;
    }

    public function getPassengersCapacity(): ?int
    {
        return $this->passengers_capacity;
    }

    public function setPassengersCapacity(int $passengers_capacity): self
    {
        $this->passengers_capacity = $passengers_capacity;

        return $this;
    }

    public function getTimeAndDate(): ?string
    {
        return $this->time_and_date;
    }

    public function setTimeAndDate(string $time_and_date): self
    {
        $this->time_and_date = $time_and_date;

        return $this;
    }

    public function getOrigin(): ?Destinations
    {
        return $this->origin;
    }

    public function setOrigin(?Destinations $origin): self
    {
        $this->origin = $origin;

        return $this;
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

    public function getAditionalServices(): ?string
    {
        return $this->aditional_services;
    }

    public function setAditionalServices(?string $aditional_services): self
    {
        $this->aditional_services = $aditional_services;

        return $this;
    }

    public function getAdditionalObservations(): ?string
    {
        return $this->additional_observations;
    }

    public function setAdditionalObservations(?string $additional_observations): self
    {
        $this->additional_observations = $additional_observations;

        return $this;
    }

    public function getServiceSubAccountType(): ?TypeSubaccount
    {
        return $this->service_sub_account_type;
    }

    public function setServiceSubAccountType(?TypeSubaccount $service_sub_account_type): self
    {
        $this->service_sub_account_type = $service_sub_account_type;

        return $this;
    }

    public function getFixedFee(): ?string
    {
        return $this->fixed_fee;
    }

    public function setFixedFee(?string $fixed_fee): self
    {
        $this->fixed_fee = $fixed_fee;

        return $this;
    }

    public function getCardFixedFee(): ?string
    {
        return $this->card_fixed_fee;
    }

    public function setCardFixedFee(?string $card_fixed_fee): self
    {
        $this->card_fixed_fee = $card_fixed_fee;

        return $this;
    }
}
