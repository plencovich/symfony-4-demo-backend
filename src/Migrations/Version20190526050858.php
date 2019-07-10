<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20190526050858 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('CREATE TABLE type_subaccount (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(3000) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ENGINE = InnoDB');
        $this->addSql('ALTER TABLE cities CHANGE codpos codpos VARCHAR(10) DEFAULT NULL');
        $this->addSql('ALTER TABLE destinations CHANGE name_sales name_sales VARCHAR(255) DEFAULT NULL, CHANGE return_destinations return_destinations JSON DEFAULT NULL COMMENT \'(DC2Type:json_array)\', CHANGE cnrt_name cnrt_name VARCHAR(255) DEFAULT NULL, CHANGE cnrt_code cnrt_code VARCHAR(100) DEFAULT NULL, CHANGE cnrt_hour_start cnrt_hour_start VARCHAR(20) DEFAULT NULL, CHANGE cnrt_duration cnrt_duration VARCHAR(20) DEFAULT NULL');
        $this->addSql('ALTER TABLE stops CHANGE address address VARCHAR(255) DEFAULT NULL, CHANGE time_trip time_trip DOUBLE PRECISION DEFAULT NULL, CHANGE price_card price_card DOUBLE PRECISION DEFAULT NULL, CHANGE lat lat VARCHAR(255) DEFAULT NULL, CHANGE lng lng VARCHAR(255) DEFAULT NULL');
        $this->addSql('ALTER TABLE services CHANGE aditional_services aditional_services VARCHAR(3000) DEFAULT NULL, CHANGE additional_observations additional_observations VARCHAR(3500) DEFAULT NULL, CHANGE fixed_fee fixed_fee VARCHAR(255) DEFAULT NULL, CHANGE card_fixed_fee card_fixed_fee VARCHAR(255) DEFAULT NULL');
        $this->addSql('ALTER TABLE fos_user CHANGE salt salt VARCHAR(255) DEFAULT NULL, CHANGE last_login last_login DATETIME DEFAULT NULL, CHANGE confirmation_token confirmation_token VARCHAR(180) DEFAULT NULL, CHANGE password_requested_at password_requested_at DATETIME DEFAULT NULL');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('DROP TABLE type_subaccount');
        $this->addSql('ALTER TABLE cities CHANGE codpos codpos VARCHAR(10) DEFAULT \'NULL\' COLLATE utf8mb4_unicode_ci');
        $this->addSql('ALTER TABLE destinations CHANGE name_sales name_sales VARCHAR(255) DEFAULT \'NULL\' COLLATE utf8mb4_unicode_ci, CHANGE return_destinations return_destinations JSON DEFAULT \'NULL\' COLLATE utf8mb4_bin COMMENT \'(DC2Type:json_array)\', CHANGE cnrt_name cnrt_name VARCHAR(255) DEFAULT \'NULL\' COLLATE utf8mb4_unicode_ci, CHANGE cnrt_code cnrt_code VARCHAR(100) DEFAULT \'NULL\' COLLATE utf8mb4_unicode_ci, CHANGE cnrt_hour_start cnrt_hour_start VARCHAR(20) DEFAULT \'NULL\' COLLATE utf8mb4_unicode_ci, CHANGE cnrt_duration cnrt_duration VARCHAR(20) DEFAULT \'NULL\' COLLATE utf8mb4_unicode_ci');
        $this->addSql('ALTER TABLE fos_user CHANGE salt salt VARCHAR(255) DEFAULT \'NULL\' COLLATE utf8mb4_unicode_ci, CHANGE last_login last_login DATETIME DEFAULT \'NULL\', CHANGE confirmation_token confirmation_token VARCHAR(180) DEFAULT \'NULL\' COLLATE utf8mb4_unicode_ci, CHANGE password_requested_at password_requested_at DATETIME DEFAULT \'NULL\'');
        $this->addSql('ALTER TABLE services CHANGE aditional_services aditional_services VARCHAR(3000) DEFAULT \'NULL\' COLLATE utf8mb4_unicode_ci, CHANGE additional_observations additional_observations VARCHAR(3500) DEFAULT \'NULL\' COLLATE utf8mb4_unicode_ci, CHANGE fixed_fee fixed_fee VARCHAR(255) DEFAULT \'NULL\' COLLATE utf8mb4_unicode_ci, CHANGE card_fixed_fee card_fixed_fee VARCHAR(255) DEFAULT \'NULL\' COLLATE utf8mb4_unicode_ci');
        $this->addSql('ALTER TABLE stops CHANGE address address VARCHAR(255) DEFAULT \'NULL\' COLLATE utf8mb4_unicode_ci, CHANGE time_trip time_trip DOUBLE PRECISION DEFAULT \'NULL\', CHANGE price_card price_card DOUBLE PRECISION DEFAULT \'NULL\', CHANGE lat lat VARCHAR(255) DEFAULT \'NULL\' COLLATE utf8mb4_unicode_ci, CHANGE lng lng VARCHAR(255) DEFAULT \'NULL\' COLLATE utf8mb4_unicode_ci');
    }
}
