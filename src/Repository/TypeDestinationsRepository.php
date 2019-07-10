<?php

namespace App\Repository;

use App\Entity\TypeDestinations;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Symfony\Bridge\Doctrine\RegistryInterface;

/**
 * @method TypeDestinations|null find($id, $lockMode = null, $lockVersion = null)
 * @method TypeDestinations|null findOneBy(array $criteria, array $orderBy = null)
 * @method TypeDestinations[]    findAll()
 * @method TypeDestinations[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class TypeDestinationsRepository extends ServiceEntityRepository
{
    public function __construct(RegistryInterface $registry)
    {
        parent::__construct($registry, TypeDestinations::class);
    }

    // /**
    //  * @return TypeDestinations[] Returns an array of TypeDestinations objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('t')
            ->andWhere('t.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('t.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?TypeDestinations
    {
        return $this->createQueryBuilder('t')
            ->andWhere('t.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
