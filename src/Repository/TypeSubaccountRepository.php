<?php

namespace App\Repository;

use App\Entity\TypeSubaccount;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Symfony\Bridge\Doctrine\RegistryInterface;

/**
 * @method TypeSubaccount|null find($id, $lockMode = null, $lockVersion = null)
 * @method TypeSubaccount|null findOneBy(array $criteria, array $orderBy = null)
 * @method TypeSubaccount[]    findAll()
 * @method TypeSubaccount[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class TypeSubaccountRepository extends ServiceEntityRepository
{
    public function __construct(RegistryInterface $registry)
    {
        parent::__construct($registry, TypeSubaccount::class);
    }

    // /**
    //  * @return TypeSubaccount[] Returns an array of TypeSubaccount objects
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
    public function findOneBySomeField($value): ?TypeSubaccount
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
