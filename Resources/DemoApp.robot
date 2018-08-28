*** Settings ***
Resource  ./PO/LandingPage.robot
Resource  ./PO/NavMenu.robot
Resource  ./PO/ResearchUserOnlyPage.robot
Resource  ./PO/HomePage.robot

*** Variables ***

*** Keywords ***
Go to Landing Page
    LandingPage.Navigate To
    LandingPage.Verify Page Loaded

Do Sign In
    LandingPage.Sign In
    ResearchUserOnlyPage.Verify Page Loaded

Go to Home Page
    ResearchUserOnlyPage.Click Continue
    HomePage.Verify Page Loaded