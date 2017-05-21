Feature: Testing the update scenario of releases
  Scenario: Updating an outdated ownCloud 8.2.5 on the production channel
    Given There is a release with channel "production"
    And The received version is "8.2.5"
    When The request is sent
    Then The response is non-empty
    And Update to version "9.0.58" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-9.0.58.zip"
    And URL to documentation is "https://docs.nextcloud.org/server/9/admin_manual/maintenance/manual_upgrade.html"
    And No signature is set

  Scenario: Updating an outdated ownCloud 8.2.5 on the stable channel
    Given There is a release with channel "stable"
    And The received version is "8.2.5"
    When The request is sent
    Then The response is non-empty
    And Update to version "9.0.58" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-9.0.58.zip"
    And URL to documentation is "https://docs.nextcloud.org/server/9/admin_manual/maintenance/manual_upgrade.html"
    And No signature is set
    
  Scenario: Updating an outdated ownCloud 8.2.5 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "8.2.5"
    When The request is sent
    Then The response is non-empty
    And Update to version "9.0.58" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-9.0.58.zip"
    And URL to documentation is "https://docs.nextcloud.org/server/9/admin_manual/maintenance/manual_upgrade.html"
    And No signature is set

  Scenario: Updating an outdated ownCloud 8.2.5 on the daily channel
    Given There is a release with channel "daily"
    And The received version is "8.2.5"
    And the received build is "2012-10-19T18:44:30+00:00%208ee2009de36e01a9866404f07722892f84c16e3e"
    When The request is sent
    Then The response is non-empty
    And Update to version "100.0.0.0" is available
    And URL to download is "https://download.nextcloud.com/server/daily/latest-stable9.zip"
    And URL to documentation is "https://docs.nextcloud.org/server/9/admin_manual/maintenance/manual_upgrade.html"
    And No signature is set

  Scenario: Updating an outdated Nextcloud 9.0.50 on the production channel
    Given There is a release with channel "production"
    And The received version is "9.0.50"
    When The request is sent
    Then The response is non-empty
    And Update to version "9.1.5.2" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-10.0.5.zip"
    And URL to documentation is "https://docs.nextcloud.org/server/10/admin_manual/maintenance/manual_upgrade.html"
    And No signature is set

  Scenario: Updating an outdated Nextcloud 9.0.50 on the stable channel
    Given There is a release with channel "stable"
    And The received version is "9.0.50"
    When The request is sent
    Then The response is non-empty
    And Update to version "9.1.5.2" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-10.0.5.zip"
    And URL to documentation is "https://docs.nextcloud.org/server/10/admin_manual/maintenance/manual_upgrade.html"
    And No signature is set

  Scenario: Updating an outdated Nextcloud 9.0.50 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "9.0.50"
    When The request is sent
    Then The response is non-empty
    And Update to version "9.1.5.2" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-10.0.5.zip"
    And URL to documentation is "https://docs.nextcloud.org/server/10/admin_manual/maintenance/manual_upgrade.html"
    And No signature is set

  Scenario: Updating an up-to-date Nextcloud 9.0.55 on the production channel
    Given There is a release with channel "production"
    And The received version is "9.0.55"
    When The request is sent
    Then The response is non-empty
    And Update to version "9.1.5.2" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-10.0.5.zip"
    And URL to documentation is "https://docs.nextcloud.org/server/10/admin_manual/maintenance/manual_upgrade.html"
    And No signature is set

  Scenario: Updating an up-to-date Nextcloud 9.0.55 on the stable channel
    Given There is a release with channel "stable"
    And The received version is "9.0.55"
    When The request is sent
    Then The response is non-empty
    And Update to version "9.1.5.2" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-10.0.5.zip"
    And URL to documentation is "https://docs.nextcloud.org/server/10/admin_manual/maintenance/manual_upgrade.html"
    And No signature is set

  Scenario: Updating an outdated staged Nextcloud 10.0.3 with PHP 5.4 on the production channel
    Given There is a release with channel "production"
    And The received PHP version is "5.4.0"
    And the installation mtime is "60"
    And The received version is "9.1.0.2"
    When The request is sent
    Then The response is non-empty
    And Update to version "9.1.5.2" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-10.0.5.zip"
    And URL to documentation is "https://docs.nextcloud.org/server/10/admin_manual/maintenance/manual_upgrade.html"
    And No signature is set

  Scenario: Updating an up-to-date Nextcloud 10.0.3 with PHP 5.6 and no mtime on the production channel
    Given There is a release with channel "production"
    And The received PHP version is "5.6.0"
    And The received version is "9.1.0.2"
    When The request is sent
    Then The response is non-empty
    And Update to version "11.0.3.2" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-11.0.3.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/11/admin_manual/maintenance/upgrade.html"
    And The signature is
    """
  w0iy1vyJTo33IgQsr+fS9p+SNS8+VK5DLygY/m2lZi4odWrnu1EHw9yY6L0vQZx3
  Twu016evAkProWqbiRpOyplAfgiEZtnElRNf6YfqPJFcoSYDGrHronrBrYZr/1xX
  g2VxNQavCYZ5xKerWUyx5XfztURZsKRjd8+wy05AdCdS33JRnft6Z9Plt1i8zeZ9
  ZsQVCpfOVzrsFJ50SMLlewKl2ddGnIrn1woPicMA6biM7KKu38QU92L/f/Q4HqqK
  nUOMeuRVG/iT7nu4Qz0nzY8uE1GM7rfYiBxsRNTXtsjpzEOo3u4zEvC8jvJl136Q
  W0N7qv9mCgCHNclh6gPcTQ==
    """

  Scenario: Updating an up-to-date staged Nextcloud 10.0.5 with PHP 5.4 on the production channel
    Given There is a release with channel "production"
    And The received PHP version is "5.4.0"
    And the installation mtime is "60"
    And The received version is "9.1.5.2"
    When The request is sent
    Then The response is empty

  Scenario: Updating an up-to-date staged Nextcloud 10.0.5 with PHP 5.6 on the production channel
    Given There is a release with channel "production"
    And The received PHP version is "5.6.0"
    And the installation mtime is "60"
    And The received version is "9.1.5.2"
    When The request is sent
    Then The response is non-empty
    And Update to version "11.0.3.2" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-11.0.3.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/11/admin_manual/maintenance/upgrade.html"
    And The signature is
    """
  w0iy1vyJTo33IgQsr+fS9p+SNS8+VK5DLygY/m2lZi4odWrnu1EHw9yY6L0vQZx3
  Twu016evAkProWqbiRpOyplAfgiEZtnElRNf6YfqPJFcoSYDGrHronrBrYZr/1xX
  g2VxNQavCYZ5xKerWUyx5XfztURZsKRjd8+wy05AdCdS33JRnft6Z9Plt1i8zeZ9
  ZsQVCpfOVzrsFJ50SMLlewKl2ddGnIrn1woPicMA6biM7KKu38QU92L/f/Q4HqqK
  nUOMeuRVG/iT7nu4Qz0nzY8uE1GM7rfYiBxsRNTXtsjpzEOo3u4zEvC8jvJl136Q
  W0N7qv9mCgCHNclh6gPcTQ==
    """

  Scenario: Updating an up-to-date staged Nextcloud 10.0.5 with PHP 5.4 on the stable channel
    Given There is a release with channel "stable"
    And The received PHP version is "5.4.0"
    And the installation mtime is "60"
    And The received version is "9.1.5.2"
    When The request is sent
    Then The response is empty

  Scenario: Updating an outdated Nextcloud 10.0.2 on the stable channel without PHP version
    Given There is a release with channel "stable"
    And The received version is "9.1.2.0"
    When The request is sent
    When The request is sent
    Then The response is non-empty
    And Update to version "9.1.5.2" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-10.0.5.zip"
    And URL to documentation is "https://docs.nextcloud.org/server/10/admin_manual/maintenance/manual_upgrade.html"
    And No signature is set

  Scenario: Updating an up-to-date staged Nextcloud 10.0.5 with PHP 5.6 on the stable channel
    Given There is a release with channel "stable"
    And The received PHP version is "5.6.0"
    And the installation mtime is "60"
    And The received version is "9.1.5.2"
    When The request is sent
    Then The response is non-empty
    And Update to version "11.0.3.2" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-11.0.3.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/11/admin_manual/maintenance/upgrade.html"
    And The signature is
    """
  w0iy1vyJTo33IgQsr+fS9p+SNS8+VK5DLygY/m2lZi4odWrnu1EHw9yY6L0vQZx3
  Twu016evAkProWqbiRpOyplAfgiEZtnElRNf6YfqPJFcoSYDGrHronrBrYZr/1xX
  g2VxNQavCYZ5xKerWUyx5XfztURZsKRjd8+wy05AdCdS33JRnft6Z9Plt1i8zeZ9
  ZsQVCpfOVzrsFJ50SMLlewKl2ddGnIrn1woPicMA6biM7KKu38QU92L/f/Q4HqqK
  nUOMeuRVG/iT7nu4Qz0nzY8uE1GM7rfYiBxsRNTXtsjpzEOo3u4zEvC8jvJl136Q
  W0N7qv9mCgCHNclh6gPcTQ==
    """

  Scenario: Updating an outdated Nextcloud 10.0.0 on the beta channel with PHP 5.6
    Given There is a release with channel "beta"
    And The received version is "9.1.0"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "11.0.3.2" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-11.0.3.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/11/admin_manual/maintenance/upgrade.html"
    And The signature is
    """
  w0iy1vyJTo33IgQsr+fS9p+SNS8+VK5DLygY/m2lZi4odWrnu1EHw9yY6L0vQZx3
  Twu016evAkProWqbiRpOyplAfgiEZtnElRNf6YfqPJFcoSYDGrHronrBrYZr/1xX
  g2VxNQavCYZ5xKerWUyx5XfztURZsKRjd8+wy05AdCdS33JRnft6Z9Plt1i8zeZ9
  ZsQVCpfOVzrsFJ50SMLlewKl2ddGnIrn1woPicMA6biM7KKu38QU92L/f/Q4HqqK
  nUOMeuRVG/iT7nu4Qz0nzY8uE1GM7rfYiBxsRNTXtsjpzEOo3u4zEvC8jvJl136Q
  W0N7qv9mCgCHNclh6gPcTQ==
    """

  Scenario: Updating an outdated Nextcloud 10.0.0 on the beta channel with PHP 5.4 will receive the latest compatible release
    Given There is a release with channel "beta"
    And The received version is "9.1.0"
    And The received PHP version is "5.4.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "9.1.5.2" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-10.0.5.zip"
    And URL to documentation is "https://docs.nextcloud.org/server/10/admin_manual/maintenance/manual_upgrade.html"
    And No signature is set

  Scenario: Updating an up-to-date Nextcloud 10.0.5 on the beta channel with PHP 5.4
    Given There is a release with channel "beta"
    And The received version is "9.1.5.2"
    And The received PHP version is "5.4.0"
    When The request is sent
    Then The response is empty

  Scenario: Updating an up-to-date Nextcloud 10.0.5 on the beta channel without sending PHP version
    Given There is a release with channel "beta"
    And The received version is "9.1.5.2"
    When The request is sent
    Then The response is empty

  Scenario: Updating an outdated Nextcloud 10.0.1 on the beta channel with PHP 5.6
    Given There is a release with channel "beta"
    And The received version is "9.1.1.1"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "11.0.3.2" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-11.0.3.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/11/admin_manual/maintenance/upgrade.html"
    And The signature is
    """
  w0iy1vyJTo33IgQsr+fS9p+SNS8+VK5DLygY/m2lZi4odWrnu1EHw9yY6L0vQZx3
  Twu016evAkProWqbiRpOyplAfgiEZtnElRNf6YfqPJFcoSYDGrHronrBrYZr/1xX
  g2VxNQavCYZ5xKerWUyx5XfztURZsKRjd8+wy05AdCdS33JRnft6Z9Plt1i8zeZ9
  ZsQVCpfOVzrsFJ50SMLlewKl2ddGnIrn1woPicMA6biM7KKu38QU92L/f/Q4HqqK
  nUOMeuRVG/iT7nu4Qz0nzY8uE1GM7rfYiBxsRNTXtsjpzEOo3u4zEvC8jvJl136Q
  W0N7qv9mCgCHNclh6gPcTQ==
    """

  Scenario: Updating an outdated Nextcloud 11.0.0 beta on the beta channel
    Given There is a release with channel "beta"
    And The received version is "11.0.0.2"
    And The received PHP version is "5.6.0"
    And the installation mtime is "10"
    When The request is sent
    Then The response is non-empty
    And Update to version "12.0.0.28" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-12.0.0.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/11/admin_manual/maintenance/upgrade.html"
    And The signature is
    """
    cN2fJ5Rs1HMemxhsZIa8rqmo9Mq/aNN58p51aDhsO9nLZIdnXcOd0wepPKlYJ6i2
    259D8iIMaONYN3C8GKYz2X77INtgdhdqIayj9NIKFuDjTp+REMU6IpYxZgQud2KW
    yyZyzGa5dHHW/p7Vn/69iTGf0/KV5t+BOmMxMPVjO436aG/3x59nl7x8z26zKwZ8
    QhguThPXPebbvpJ0TRUZaNqDw0UdOvlRj1opB0VMMHr44ynB41NsFALrtjjqiRhL
    HRXRKV4emR6okJRIt1aQ4yJyThDvUTfejgP2h0Fq5F8m0GH8wIz38RGi56EfbhsL
    JusI529WdYlYHj35szisQw==
    """

  Scenario: Updating an outdated Nextcloud 11.0.0 beta on the beta channel without an mtime
    Given There is a release with channel "beta"
    And The received version is "11.0.0.2"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "12.0.0.28" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-12.0.0.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/11/admin_manual/maintenance/upgrade.html"
    And The signature is
    """
    cN2fJ5Rs1HMemxhsZIa8rqmo9Mq/aNN58p51aDhsO9nLZIdnXcOd0wepPKlYJ6i2
    259D8iIMaONYN3C8GKYz2X77INtgdhdqIayj9NIKFuDjTp+REMU6IpYxZgQud2KW
    yyZyzGa5dHHW/p7Vn/69iTGf0/KV5t+BOmMxMPVjO436aG/3x59nl7x8z26zKwZ8
    QhguThPXPebbvpJ0TRUZaNqDw0UdOvlRj1opB0VMMHr44ynB41NsFALrtjjqiRhL
    HRXRKV4emR6okJRIt1aQ4yJyThDvUTfejgP2h0Fq5F8m0GH8wIz38RGi56EfbhsL
    JusI529WdYlYHj35szisQw==
    """

  Scenario: Updating an outdated Nextcloud 11.0.0 stable without PHP version
    Given There is a release with channel "stable"
    And The received version is "11.0.0.2"
    When The request is sent
    Then The response is non-empty
    And Update to version "11.0.3.2" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-11.0.3.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/11/admin_manual/maintenance/upgrade.html"
    And The signature is
    """
  w0iy1vyJTo33IgQsr+fS9p+SNS8+VK5DLygY/m2lZi4odWrnu1EHw9yY6L0vQZx3
  Twu016evAkProWqbiRpOyplAfgiEZtnElRNf6YfqPJFcoSYDGrHronrBrYZr/1xX
  g2VxNQavCYZ5xKerWUyx5XfztURZsKRjd8+wy05AdCdS33JRnft6Z9Plt1i8zeZ9
  ZsQVCpfOVzrsFJ50SMLlewKl2ddGnIrn1woPicMA6biM7KKu38QU92L/f/Q4HqqK
  nUOMeuRVG/iT7nu4Qz0nzY8uE1GM7rfYiBxsRNTXtsjpzEOo3u4zEvC8jvJl136Q
  W0N7qv9mCgCHNclh6gPcTQ==
    """

  Scenario: Updating an outdated Nextcloud 11.0.0 beta on the empty channel - will use the stable channel then
    Given There is a release with channel ""
    And The received version is "11.0.0.2"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "11.0.3.2" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-11.0.3.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/11/admin_manual/maintenance/upgrade.html"
    And The signature is
    """
  w0iy1vyJTo33IgQsr+fS9p+SNS8+VK5DLygY/m2lZi4odWrnu1EHw9yY6L0vQZx3
  Twu016evAkProWqbiRpOyplAfgiEZtnElRNf6YfqPJFcoSYDGrHronrBrYZr/1xX
  g2VxNQavCYZ5xKerWUyx5XfztURZsKRjd8+wy05AdCdS33JRnft6Z9Plt1i8zeZ9
  ZsQVCpfOVzrsFJ50SMLlewKl2ddGnIrn1woPicMA6biM7KKu38QU92L/f/Q4HqqK
  nUOMeuRVG/iT7nu4Qz0nzY8uE1GM7rfYiBxsRNTXtsjpzEOo3u4zEvC8jvJl136Q
  W0N7qv9mCgCHNclh6gPcTQ==
    """

  Scenario: Updating an outdated Nextcloud 12.0.0 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "12.0.0.15"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "12.0.0.28" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-12.0.0.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/11/admin_manual/maintenance/upgrade.html"
    And The signature is
    """
    cN2fJ5Rs1HMemxhsZIa8rqmo9Mq/aNN58p51aDhsO9nLZIdnXcOd0wepPKlYJ6i2
    259D8iIMaONYN3C8GKYz2X77INtgdhdqIayj9NIKFuDjTp+REMU6IpYxZgQud2KW
    yyZyzGa5dHHW/p7Vn/69iTGf0/KV5t+BOmMxMPVjO436aG/3x59nl7x8z26zKwZ8
    QhguThPXPebbvpJ0TRUZaNqDw0UdOvlRj1opB0VMMHr44ynB41NsFALrtjjqiRhL
    HRXRKV4emR6okJRIt1aQ4yJyThDvUTfejgP2h0Fq5F8m0GH8wIz38RGi56EfbhsL
    JusI529WdYlYHj35szisQw==
    """

  Scenario: Updating an up-to-date Nextcloud 12.0.0 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "12.0.0.28"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is empty

  Scenario: Updating an outdated Nextcloud 11.0.0 beta on the stable channel
    Given There is a release with channel "stable"
    And The received version is "11.0.0.2"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "11.0.3.2" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-11.0.3.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/11/admin_manual/maintenance/upgrade.html"
    And The signature is
    """
  w0iy1vyJTo33IgQsr+fS9p+SNS8+VK5DLygY/m2lZi4odWrnu1EHw9yY6L0vQZx3
  Twu016evAkProWqbiRpOyplAfgiEZtnElRNf6YfqPJFcoSYDGrHronrBrYZr/1xX
  g2VxNQavCYZ5xKerWUyx5XfztURZsKRjd8+wy05AdCdS33JRnft6Z9Plt1i8zeZ9
  ZsQVCpfOVzrsFJ50SMLlewKl2ddGnIrn1woPicMA6biM7KKu38QU92L/f/Q4HqqK
  nUOMeuRVG/iT7nu4Qz0nzY8uE1GM7rfYiBxsRNTXtsjpzEOo3u4zEvC8jvJl136Q
  W0N7qv9mCgCHNclh6gPcTQ==
    """

  Scenario: Updating an up-to-date Nextcloud 11.0.0 on the stable channel
    Given There is a release with channel "stable"
    And The received version is "11.0.3.2"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is empty

  Scenario: Updating an up-to-date Nextcloud 11.0.0 on the stable channel without mtime
    Given There is a release with channel "stable"
    And The received version is "11.0.3.2"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is empty

  Scenario: Updating an outdated Nextcloud 11.0.0 beta on the production channel
    Given There is a release with channel "production"
    And The received version is "11.0.0.2"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "11.0.3.2" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-11.0.3.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/11/admin_manual/maintenance/upgrade.html"
    And The signature is
    """
  w0iy1vyJTo33IgQsr+fS9p+SNS8+VK5DLygY/m2lZi4odWrnu1EHw9yY6L0vQZx3
  Twu016evAkProWqbiRpOyplAfgiEZtnElRNf6YfqPJFcoSYDGrHronrBrYZr/1xX
  g2VxNQavCYZ5xKerWUyx5XfztURZsKRjd8+wy05AdCdS33JRnft6Z9Plt1i8zeZ9
  ZsQVCpfOVzrsFJ50SMLlewKl2ddGnIrn1woPicMA6biM7KKu38QU92L/f/Q4HqqK
  nUOMeuRVG/iT7nu4Qz0nzY8uE1GM7rfYiBxsRNTXtsjpzEOo3u4zEvC8jvJl136Q
  W0N7qv9mCgCHNclh6gPcTQ==
    """

  Scenario: Updating an up-to-date Nextcloud 11.0.3 on the production channel with PHP 5.6
    Given There is a release with channel "production"
    And The received version is "11.0.3.2"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is empty

  Scenario: Updating an up-to-date Nextcloud 11.0.3 on the production channel without PHP version
    Given There is a release with channel "production"
    And The received version is "11.0.3.2"
    When The request is sent
    Then The response is empty

 Scenario: Updating an outdated Nextcloud 12.0.0 beta on the beta channel
    Given There is a release with channel "beta"
    And The received version is "12.0.0.16"
    And The received PHP version is "5.6.0"
    And the installation mtime is "10"
    When The request is sent
    Then The response is non-empty
    And Update to version "12.0.0.28" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-12.0.0.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/11/admin_manual/maintenance/upgrade.html"
    And The signature is
    """
    cN2fJ5Rs1HMemxhsZIa8rqmo9Mq/aNN58p51aDhsO9nLZIdnXcOd0wepPKlYJ6i2
    259D8iIMaONYN3C8GKYz2X77INtgdhdqIayj9NIKFuDjTp+REMU6IpYxZgQud2KW
    yyZyzGa5dHHW/p7Vn/69iTGf0/KV5t+BOmMxMPVjO436aG/3x59nl7x8z26zKwZ8
    QhguThPXPebbvpJ0TRUZaNqDw0UdOvlRj1opB0VMMHr44ynB41NsFALrtjjqiRhL
    HRXRKV4emR6okJRIt1aQ4yJyThDvUTfejgP2h0Fq5F8m0GH8wIz38RGi56EfbhsL
    JusI529WdYlYHj35szisQw==
    """

 Scenario: Updating an up-to-date Nextcloud 12.0.0 beta on the beta channel
    Given There is a release with channel "beta"
    And The received version is "12.0.0.28"
    And The received PHP version is "5.6.0"
    And the installation mtime is "10"
    When The request is sent
    Then The response is empty

 Scenario: Updating an outdated Nextcloud 12.0.0 beta on the stable channel
    Given There is a release with channel "stable"
    And The received version is "12.0.0.16"
    And The received PHP version is "5.6.0"
    And the installation mtime is "10"
    When The request is sent
    Then The response is non-empty
    And Update to version "12.0.0.28" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-12.0.0.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/11/admin_manual/maintenance/upgrade.html"
    And The signature is
    """
    cN2fJ5Rs1HMemxhsZIa8rqmo9Mq/aNN58p51aDhsO9nLZIdnXcOd0wepPKlYJ6i2
    259D8iIMaONYN3C8GKYz2X77INtgdhdqIayj9NIKFuDjTp+REMU6IpYxZgQud2KW
    yyZyzGa5dHHW/p7Vn/69iTGf0/KV5t+BOmMxMPVjO436aG/3x59nl7x8z26zKwZ8
    QhguThPXPebbvpJ0TRUZaNqDw0UdOvlRj1opB0VMMHr44ynB41NsFALrtjjqiRhL
    HRXRKV4emR6okJRIt1aQ4yJyThDvUTfejgP2h0Fq5F8m0GH8wIz38RGi56EfbhsL
    JusI529WdYlYHj35szisQw==
    """

 Scenario: Updating an up-to-date Nextcloud 12.0.0 beta on the stable channel
    Given There is a release with channel "stable"
    And The received version is "12.0.0.28"
    And The received PHP version is "5.6.0"
    And the installation mtime is "10"
    When The request is sent
    Then The response is empty

 Scenario: Updating an outdated Nextcloud 12.0.0 beta on the production channel
    Given There is a release with channel "production"
    And The received version is "12.0.0.16"
    And The received PHP version is "5.6.0"
    And the installation mtime is "10"
    When The request is sent
    Then The response is non-empty
    And Update to version "12.0.0.28" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-12.0.0.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/11/admin_manual/maintenance/upgrade.html"
    And The signature is
    """
    cN2fJ5Rs1HMemxhsZIa8rqmo9Mq/aNN58p51aDhsO9nLZIdnXcOd0wepPKlYJ6i2
    259D8iIMaONYN3C8GKYz2X77INtgdhdqIayj9NIKFuDjTp+REMU6IpYxZgQud2KW
    yyZyzGa5dHHW/p7Vn/69iTGf0/KV5t+BOmMxMPVjO436aG/3x59nl7x8z26zKwZ8
    QhguThPXPebbvpJ0TRUZaNqDw0UdOvlRj1opB0VMMHr44ynB41NsFALrtjjqiRhL
    HRXRKV4emR6okJRIt1aQ4yJyThDvUTfejgP2h0Fq5F8m0GH8wIz38RGi56EfbhsL
    JusI529WdYlYHj35szisQw==
    """

 Scenario: Updating an up-to-date Nextcloud 12.0.0 beta on the production channel
    Given There is a release with channel "production"
    And The received version is "12.0.0.28"
    And The received PHP version is "5.6.0"
    And the installation mtime is "10"
    When The request is sent
    Then The response is empty

  Scenario: Updating an outdated Nextcloud 9.0 daily
    Given There is a release with channel "daily"
    And The received version is "9.0.100"
    And the received build is "2012-10-19T18:44:30+00:00%208ee2009de36e01a9866404f07722892f84c16e3e"
    When The request is sent
    Then The response is non-empty
    And Update to version "100.0.0.0" is available
    And URL to download is "https://download.nextcloud.com/server/daily/latest-stable9.zip"
    And URL to documentation is "https://docs.nextcloud.org/server/9/admin_manual/maintenance/manual_upgrade.html"
    And No signature is set

  Scenario: Updating an up-to-date Nextcloud 9.0 daily
    Given There is a release with channel "daily"
    And The received version is "9.0.100"
    And the received build is "2019-10-19T18:44:30+00:00"
    When The request is sent
    Then The response is empty

  Scenario: Updating an outdated Nextcloud 10.0 daily
    Given There is a release with channel "daily"
    And The received version is "9.1.100"
    And the received build is "2012-10-19T18:44:30+00:00%208ee2009de36e01a9866404f07722892f84c16e3e"
    When The request is sent
    Then The response is non-empty
    And Update to version "100.0.0.0" is available
    And URL to download is "https://download.nextcloud.com/server/daily/latest-stable10.zip"
    And URL to documentation is "https://docs.nextcloud.org/server/10/admin_manual/maintenance/manual_upgrade.html"
    And No signature is set

  Scenario: Updating an up-to-date Nextcloud 10.0 daily
    Given There is a release with channel "daily"
    And The received version is "9.1.100"
    And the received build is "2019-10-19T18:44:30+00:00"
    When The request is sent
    Then The response is empty

  Scenario: Updating an outdated Nextcloud 11.0 daily
    Given There is a release with channel "daily"
    And The received version is "11.0.100"
    And the received build is "2012-10-19T18:44:30+00:00%208ee2009de36e01a9866404f07722892f84c16e3e"
    When The request is sent
    Then The response is non-empty
    And Update to version "100.0.0.0" is available
    And URL to download is "https://download.nextcloud.com/server/daily/latest-stable11.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/11/admin_manual/maintenance/upgrade.html"
    And No signature is set

  Scenario: Updating an up-to-date Nextcloud 11.0 daily
    Given There is a release with channel "daily"
    And The received version is "11.0.100"
    And the received build is "2019-10-19T18:44:30+00:00"
    When The request is sent
    Then The response is empty
