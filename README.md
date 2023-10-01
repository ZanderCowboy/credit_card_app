# credit_card_app

A Flutter Mobile app that allows the submission of credit card details for validation.

[![GitHub Super-Linter](https://github.com/ZanderCowboy/credit_card_app/actions/workflows/linter.yml/badge.svg)](https://github.com/marketplace/actions/super-linter)

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Requirements

Build a Flutter mobile application that can do the following:

- Allow the user to submit credit card details. Details should include: Card Number, Card Type, CVV, Issuing Country.
- Ability to infer Card Type from Credit Card number would be beneficial.
- Check the specified country to make sure it doesn’t exist in a list of banned countries.
- Make the list of banned countries configurable.
- If the card is valid – store it in local storage.
SEMBAST NoSQL Local DB

- Display all the credit cards that have been captured during the session.
- Don’t capture the same card twice.
- Please also add the ability to scan a credit card (examples attached), and pre-populate the card number and infer the cart type.
- Authorization is not necessary for the purposes of this test.

## Guidelines

You are welcome to use third party packages, but we are trying to gauge your skill. Please try to keep the amount of packages to the absolutely necessary. Add your application to a git repository and send that to us. Don’t hesitate to reach out to us if you have questions. Good luck and have fun!  

## General Links

<https://docs.github.com/en/actions/monitoring-and-troubleshooting-workflows/adding-a-workflow-status-badge>

<https://blog.devgenius.io/easy-git-hooks-for-flutter-f2927cbbcfd4>

<https://www.softwaretestinghelp.com/bdd-framework/>

<https://docs.flutter.dev/cookbook/forms/validation>

<https://medium.com/@yasirquyoom/how-to-build-transaction-history-list-in-flutter-app-51838c995ee1>

save list of data persistence for transaction history flutter:

- <https://stackoverflow.com/questions/60470918/data-persistence-how-to-persist-list-of-data>

## Pages Structure

### start_page

The start page has a center Text field with the name of the app, and beneath it there is a round play or rounded square 'start' button.
=> landing_page

### landing_page

The landing page should have a title, and three buttons ('Capture', 'Scan', and 'History'). These should go to their respective screens. Also, to end a session, there should be a logout/'end' button in the upper right hand corner.
=> capture_page
=> scan_page
=> history_page
<= start_page

### capture_page

The capture page should show a credit card frontside and if you hover over it, it should turn to the back of the card. Beneath it, it should have all the needed text fields to enter any data. This should be validated on the go with all the requirements checked out.
=> result_page

### scan_page

=> result_page

### history_page

=> landing_page

### result_page

=> landing_page


## Commands
- dart run build_runner build --delete-conflicting-outputs
