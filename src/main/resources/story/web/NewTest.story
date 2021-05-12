Scenario: Authorization

Given I am on the main application page
When I click on element located `By.xpath(//div[text()='Sign In'])`
When I click on element located `By.xpath(//div//a/span[text()='Sign in with IMDb'])`
When I enter `iv5967872@gmail.com` in field located `By.xpath(//div/input[@name='email'])`
When I enter `usertester` in field located `By.xpath(//div/input[@name='password'])`
When I click on element located `By.xpath(//div//span/input[@type='submit'])`


Scenario: Search movie

When I enter `Avengers` in field located `By.xpath(//div/input[@id="suggestion-search"])`
When I click on element located `By.xpath(//button[@type='submit'])`

Scenario: Add to the Watchlist

When I click on element located `By.xpath(//td[2]/a[text()='The Avengers'])`
When I click on element located `By.xpath(//button[contains(@class,'add watchlist')])`

Scenario: Sort and export whatch list

When I click on element located `By.xpath(//div[contains(@class, 'WatchlistButton')]/a)`
When I click on element located `By.xpath(//select[@id="lister-sort-by-options"]/option[2])`
When I click on element located `By.xpath(//div[@class='export']/a[text()='Export this list'])`
