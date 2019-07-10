<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20190526125125 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE services ADD categoryid_id INT NOT NULL, ADD origin_id INT NOT NULL, ADD destination_id INT NOT NULL, ADD service_sub_account_type_id INT NOT NULL, DROP categoryid, DROP origin, DROP destination, DROP service_sub_account_type, CHANGE time_and_date time_and_date VARCHAR(255) NOT NULL, CHANGE aditional_services aditional_services VARCHAR(3000) DEFAULT NULL, CHANGE additional_observations additional_observations VARCHAR(3500) DEFAULT NULL, CHANGE fixed_fee fixed_fee VARCHAR(255) DEFAULT NULL, CHANGE card_fixed_fee card_fixed_fee VARCHAR(255) DEFAULT NULL');
        $this->addSql('ALTER TABLE services ADD CONSTRAINT FK_7332E169A9FA940B FOREIGN KEY (categoryid_id) REFERENCES type_destinations (id)');
        $this->addSql('ALTER TABLE services ADD CONSTRAINT FK_7332E16956A273CC FOREIGN KEY (origin_id) REFERENCES destinations (id)');
        $this->addSql('ALTER TABLE services ADD CONSTRAINT FK_7332E169816C6140 FOREIGN KEY (destination_id) REFERENCES destinations (id)');
        $this->addSql('ALTER TABLE services ADD CONSTRAINT FK_7332E169D74B266E FOREIGN KEY (service_sub_account_type_id) REFERENCES type_subaccount (id)');
        $this->addSql('CREATE INDEX IDX_7332E169A9FA940B ON services (categoryid_id)');
        $this->addSql('CREATE INDEX IDX_7332E16956A273CC ON services (origin_id)');
        $this->addSql('CREATE INDEX IDX_7332E169816C6140 ON services (destination_id)');
        $this->addSql('CREATE INDEX IDX_7332E169D74B266E ON services (service_sub_account_type_id)');
        $this->addSql('ALTER TABLE stops CHANGE address address VARCHAR(255) DEFAULT NULL, CHANGE time_trip time_trip DOUBLE PRECISION DEFAULT NULL, CHANGE price_card price_card DOUBLE PRECISION DEFAULT NULL, CHANGE lat lat VARCHAR(255) DEFAULT NULL, CHANGE lng lng VARCHAR(255) DEFAULT NULL');
        $this->addSql('ALTER TABLE cities CHANGE codpos codpos VARCHAR(10) DEFAULT NULL');
        $this->addSql('ALTER TABLE destinations CHANGE name_sales name_sales VARCHAR(255) DEFAULT NULL, CHANGE return_destinations return_destinations JSON DEFAULT NULL COMMENT \'(DC2Type:json_array)\', CHANGE cnrt_name cnrt_name VARCHAR(255) DEFAULT NULL, CHANGE cnrt_code cnrt_code VARCHAR(100) DEFAULT NULL, CHANGE cnrt_hour_start cnrt_hour_start VARCHAR(20) DEFAULT NULL, CHANGE cnrt_duration cnrt_duration VARCHAR(20) DEFAULT NULL');
        $this->addSql('ALTER TABLE fos_user CHANGE salt salt VARCHAR(255) DEFAULT NULL, CHANGE last_login last_login DATETIME DEFAULT NULL, CHANGE confirmation_token confirmation_token VARCHAR(180) DEFAULT NULL, CHANGE password_requested_at password_requested_at DATETIME DEFAULT NULL');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE cities CHANGE codpos codpos VARCHAR(10) DEFAULT \'NULL\' COLLATE utf8mb4_unicode_ci');
        $this->addSql('ALTER TABLE destinations CHANGE name_sales name_sales VARCHAR(255) DEFAULT \'NULL\' COLLATE utf8mb4_unicode_ci, CHANGE return_destinations return_destinations JSON DEFAULT \'NULL\' COLLATE utf8mb4_bin COMMENT \'(DC2Type:json_array)\', CHANGE cnrt_name cnrt_name VARCHAR(255) DEFAULT \'NULL\' COLLATE utf8mb4_unicode_ci, CHANGE cnrt_code cnrt_code VARCHAR(100) DEFAULT \'NULL\' COLLATE utf8mb4_unicode_ci, CHANGE cnrt_hour_start cnrt_hour_start VARCHAR(20) DEFAULT \'NULL\' COLLATE utf8mb4_unicode_ci, CHANGE cnrt_duration cnrt_duration VARCHAR(20) DEFAULT \'NULL\' COLLATE utf8mb4_unicode_ci');
        $this->addSql('ALTER TABLE fos_user CHANGE salt salt VARCHAR(255) DEFAULT \'NULL\' COLLATE utf8mb4_unicode_ci, CHANGE last_login last_login DATETIME DEFAULT \'NULL\', CHANGE confirmation_token confirmation_token VARCHAR(180) DEFAULT \'NULL\' COLLATE utf8mb4_unicode_ci, CHANGE password_requested_at password_requested_at DATETIME DEFAULT \'NULL\'');
        $this->addSql('ALTER TABLE services DROP FOREIGN KEY FK_7332E169A9FA940B');
        $this->addSql('ALTER TABLE services DROP FOREIGN KEY FK_7332E16956A273CC');
        $this->addSql('ALTER TABLE services DROP FOREIGN KEY FK_7332E169816C6140');
        $this->addSql('ALTER TABLE services DROP FOREIGN KEY FK_7332E169D74B266E');
        $this->addSql('DROP INDEX IDX_7332E169A9FA940B ON services');
        $this->addSql('DROP INDEX IDX_7332E16956A273CC ON services');
        $this->addSql('DROP INDEX IDX_7332E169816C6140 ON services');
        $this->addSql('DROP INDEX IDX_7332E169D74B266E ON services');
        $this->addSql('ALTER TABLE services ADD categoryid INT NOT NULL, ADD origin INT NOT NULL, ADD destination INT NOT NULL, ADD service_sub_account_type INT NOT NULL, DROP categoryid_id, DROP origin_id, DROP destination_id, DROP service_sub_account_type_id, CHANGE time_and_date time_and_date DATETIME NOT NULL, CHANGE aditional_services aditional_services VARCHAR(3000) DEFAULT \'NULL\' COLLATE utf8mb4_unicode_ci, CHANGE additional_observations additional_observations VARCHAR(3500) DEFAULT \'NULL\' COLLATE utf8mb4_unicode_ci, CHANGE fixed_fee fixed_fee VARCHAR(255) DEFAULT \'NULL\' COLLATE utf8mb4_unicode_ci, CHANGE card_fixed_fee card_fixed_fee VARCHAR(255) DEFAULT \'NULL\' COLLATE utf8mb4_unicode_ci');
        $this->addSql('ALTER TABLE stops CHANGE address address VARCHAR(255) DEFAULT \'NULL\' COLLATE utf8mb4_unicode_ci, CHANGE time_trip time_trip DOUBLE PRECISION DEFAULT \'NULL\', CHANGE price_card price_card DOUBLE PRECISION DEFAULT \'NULL\', CHANGE lat lat VARCHAR(255) DEFAULT \'NULL\' COLLATE utf8mb4_unicode_ci, CHANGE lng lng VARCHAR(255) DEFAULT \'NULL\' COLLATE utf8mb4_unicode_ci');
    }
}
