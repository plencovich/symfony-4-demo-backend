<?php

namespace App\Repository;

use App\Entity\Destinations;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Symfony\Bridge\Doctrine\RegistryInterface;

/**
 * @method Destinations|null find($id, $lockMode = null, $lockVersion = null)
 * @method Destinations|null findOneBy(array $criteria, array $orderBy = null)
 * @method Destinations[]    findAll()
 * @method Destinations[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class DestinationsRepository extends ServiceEntityRepository
{
    public function __construct(RegistryInterface $registry)
    {
        parent::__construct($registry, Destinations::class);
    }

    // /**
    //  * @return Destinations[] Returns an array of Destinations objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('d')
            ->andWhere('d.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('d.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?Destinations
    {
        return $this->createQueryBuilder('d')
            ->andWhere('d.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
