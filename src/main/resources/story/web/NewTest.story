Scenario: Authorization

Given I am on the main application page
When I click on element located `By.xpath(//div[text()='Sign In'])`
When I click on element located `By.xpath(//span[text()='Sign in with IMDb'])`
When I enter `iv5967872@gmail.com` in field located `By.xpath(//input[@name='email'])`
When I enter `usertester` in field located `By.xpath(//input[@name='password'])`
When I click on element located `By.xpath(//input[@type='submit'])`
Then the page title contains 'IMDb: Ratings, Reviews, and Where to Watch the Best Movies & TV Shows'
Then the element with the xpath '//span[text()='Irina']' exists for '2' seconds


Scenario: Search movie

When I enter `Avengers` in field located `By.xpath(//input[@id="suggestion-search"])`
When I click on element located `By.xpath(//button[@type='submit'])`
Then the element with the xpath '(//a[text()='The Avengers'])' exists for '2' seconds

Scenario: Add to the Watchlist

When I click on element located `By.xpath(//a[text()='The Avengers'])`
When I click on element located `By.xpath(//div[text()='Add to Watchlist'])`
Then the element with the xpath '(//div[text()='Added to Watchlist'])' exists for '2' seconds

Scenario: Sort and export whatch list

When I click on element located `By.xpath(//div[contains(@class, 'WatchlistButton')]/a)`
When I click on element located `By.xpath(//select[@id="lister-sort-by-options"]/option[2])`
When I click on element located `By.xpath(//a[text()='Export this list'])`
