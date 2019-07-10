<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20190513130801 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('CREATE TABLE stops (id INT AUTO_INCREMENT NOT NULL, destination_id INT NOT NULL, name VARCHAR(255) NOT NULL, keyname VARCHAR(255) NOT NULL, address VARCHAR(255) DEFAULT NULL, position SMALLINT NOT NULL, time_trip DOUBLE PRECISION DEFAULT NULL, price DOUBLE PRECISION NOT NULL, price_card DOUBLE PRECISION DEFAULT NULL, fixed_point SMALLINT NOT NULL, lat VARCHAR(255) DEFAULT NULL, lng VARCHAR(255) DEFAULT NULL, buy_online SMALLINT NOT NULL, INDEX IDX_39B58FA4816C6140 (destination_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ENGINE = InnoDB');
        $this->addSql('ALTER TABLE stops ADD CONSTRAINT FK_39B58FA4816C6140 FOREIGN KEY (destination_id) REFERENCES destinations (id)');
        $this->addSql('ALTER TABLE cities CHANGE codpos codpos VARCHAR(10) DEFAULT NULL');
        $this->addSql('ALTER TABLE destinations CHANGE name_sales name_sales VARCHAR(255) DEFAULT NULL, CHANGE return_destinations return_destinations JSON DEFAULT NULL COMMENT \'(DC2Type:json_array)\', CHANGE cnrt_name cnrt_name VARCHAR(255) DEFAULT NULL, CHANGE cnrt_code cnrt_code VARCHAR(100) DEFAULT NULL, CHANGE cnrt_hour_start cnrt_hour_start VARCHAR(20) DEFAULT NULL, CHANGE cnrt_duration cnrt_duration VARCHAR(20) DEFAULT NULL');
        $this->addSql('ALTER TABLE fos_user CHANGE salt salt VARCHAR(255) DEFAULT NULL, CHANGE last_login last_login DATETIME DEFAULT NULL, CHANGE confirmation_token confirmation_token VARCHAR(180) DEFAULT NULL, CHANGE password_requested_at password_requested_at DATETIME DEFAULT NULL');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('DROP TABLE stops');
        $this->addSql('ALTER TABLE cities CHANGE codpos codpos VARCHAR(10) DEFAULT \'NULL\' COLLATE utf8mb4_unicode_ci');
        $this->addSql('ALTER TABLE destinations CHANGE name_sales name_sales VARCHAR(255) DEFAULT \'NULL\' COLLATE utf8mb4_unicode_ci, CHANGE return_destinations return_destinations JSON DEFAULT \'NULL\' COLLATE utf8mb4_bin COMMENT \'(DC2Type:json_array)\', CHANGE cnrt_name cnrt_name VARCHAR(255) DEFAULT \'NULL\' COLLATE utf8mb4_unicode_ci, CHANGE cnrt_code cnrt_code VARCHAR(100) DEFAULT \'NULL\' COLLATE utf8mb4_unicode_ci, CHANGE cnrt_hour_start cnrt_hour_start VARCHAR(20) DEFAULT \'NULL\' COLLATE utf8mb4_unicode_ci, CHANGE cnrt_duration cnrt_duration VARCHAR(20) DEFAULT \'NULL\' COLLATE utf8mb4_unicode_ci');
        $this->addSql('ALTER TABLE fos_user CHANGE salt salt VARCHAR(255) DEFAULT \'NULL\' COLLATE utf8mb4_unicode_ci, CHANGE last_login last_login DATETIME DEFAULT \'NULL\', CHANGE confirmation_token confirmation_token VARCHAR(180) DEFAULT \'NULL\' COLLATE utf8mb4_unicode_ci, CHANGE password_requested_at password_requested_at DATETIME DEFAULT \'NULL\'');
    }
}
