# wc18-age

<!-- badges: start -->
[![Project Status: Concept – Minimal or no implementation has been done yet, or the repository is only intended to be a limited example, demo, or proof-of-concept.](https://www.repostatus.org/badges/latest/concept.svg)](https://www.repostatus.org/#concept)
![](https://img.shields.io/badge/Shiny-not_hosted-blue?style=flat&labelColor=white&logo=RStudio&logoColor=blue)
[![Blog post](https://img.shields.io/badge/rostrum.blog-post-008900?labelColor=000000&logo=data%3Aimage%2Fgif%3Bbase64%2CR0lGODlhEAAQAPEAAAAAABWCBAAAAAAAACH5BAlkAAIAIf8LTkVUU0NBUEUyLjADAQAAACwAAAAAEAAQAAAC55QkISIiEoQQQgghRBBCiCAIgiAIgiAIQiAIgSAIgiAIQiAIgRAEQiAQBAQCgUAQEAQEgYAgIAgIBAKBQBAQCAKBQEAgCAgEAoFAIAgEBAKBIBAQCAQCgUAgEAgCgUBAICAgICAgIBAgEBAgEBAgEBAgECAgICAgECAQIBAQIBAgECAgICAgICAgECAQECAQICAgICAgICAgEBAgEBAgEBAgICAgICAgECAQIBAQIBAgECAgICAgIBAgECAQECAQIBAgICAgIBAgIBAgEBAgECAgECAgICAgICAgECAgECAgQIAAAQIKAAAh%2BQQJZAACACwAAAAAEAAQAAAC55QkIiESIoQQQgghhAhCBCEIgiAIgiAIQiAIgSAIgiAIQiAIgRAEQiAQBAQCgUAQEAQEgYAgIAgIBAKBQBAQCAKBQEAgCAgEAoFAIAgEBAKBIBAQCAQCgUAgEAgCgUBAICAgICAgIBAgEBAgEBAgEBAgECAgICAgECAQIBAQIBAgECAgICAgICAgECAQECAQICAgICAgICAgEBAgEBAgEBAgICAgICAgECAQIBAQIBAgECAgICAgIBAgECAQECAQIBAgICAgIBAgIBAgEBAgECAgECAgICAgICAgECAgECAgQIAAAQIKAAA7)](https://www.rostrum.blog/2018/07/17/world-cup-age-app/)
<!-- badges: end -->

How many players at the 2018 FIFA World Cup 2018 were younger than you? 

## What?

There's a still a chance you can make it as a footballer, right? No. Many pros are probably young enough to be your child. Use this app as a surefire way to make yourself feel old. [Read the accompanying blog post](https://www.rostrum.blog/2018/07/17/world-cup-age-app/) to learn more.

Some testimonials from colleagues: 'very depressing'; 'I knew I was too old to become a great footballer'; 'just what I needed to see'.

You can run the app from an R session with:

``` r
shiny::runGitHub("wc18-age", "matt-dray")
```

The app depends on the packages {shiny}, {shinythemes} and {DT}.


## Data 

Data prepared by AllezCannes, scraped from Wikipedia. See [the GitHub repo](https://github.com/AllezCannes/WorldCupSquads/blob/master/README.md), [data](https://github.com/AllezCannes/WorldCupSquads) and [the app](https://allezcannes.shinyapps.io/Soccer_squads/).
