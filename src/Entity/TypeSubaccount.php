<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\TypeSubaccountRepository")
 */
class TypeSubaccount
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=3000)
     */
    private $name;

    /**
     * @ORM\OneToMany(targetEntity="App\Entity\Services", mappedBy="service_sub_account_type")
     */
    private $accountservice;

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
}
