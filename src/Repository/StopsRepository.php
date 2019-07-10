<?php

namespace App\Repository;

use App\Entity\Stops;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Symfony\Bridge\Doctrine\RegistryInterface;

/**
 * @method Stops|null find($id, $lockMode = null, $lockVersion = null)
 * @method Stops|null findOneBy(array $criteria, array $orderBy = null)
 * @method Stops[]    findAll()
 * @method Stops[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class StopsRepository extends ServiceEntityRepository
{
    public function __construct(RegistryInterface $registry)
    {
        parent::__construct($registry, Stops::class);
    }

    // /**
    //  * @return Stops[] Returns an array of Stops objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('s')
            ->andWhere('s.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('s.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?Stops
    {
        return $this->createQueryBuilder('s')
            ->andWhere('s.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
