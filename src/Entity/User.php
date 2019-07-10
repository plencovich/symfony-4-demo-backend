<?php
// src/Entity/User.php

namespace App\Entity;

use FOS\UserBundle\Model\User as BaseUser;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity
 * @ORM\Table(name="fos_user")
 */
class User extends BaseUser
{
    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected $id;

    /**
     * @var string
     *
     * @ORM\Column(name="full_name", type="string", length=428)
     */
    private $full_name;

    public function __construct()
    {
        parent::__construct();
        // your own logic
    }

    /**
     * Set full_name
     *
     * @param string $full_name
     *
     * @return User
     */
    public function setFullName($full_name)
    {
        $this->full_name = $full_name;

        return $this;
    }

    /**
     * Get full_name
     *
     * @return string
     */
    public function getFullName()
    {
        return $this->full_name;
    }
}
