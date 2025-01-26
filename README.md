# Intro-To-Bloc-Create-different-BLoCs
# Overview

## This Flutter application demonstrates the usage of the BLoC (Business Logic Component) pattern to manage state effectively. The app includes two independent BLoCs:

1. CounterBloc: Handles the logic for a counter that can be incremented or decremented.
2. ThemeBlocBloc: Manages theme switching between light and dark modes.
   
## The app uses the flutter_bloc package to create, manage, and use BLoCs in a structured and reusable way. It includes a simple user interface where users can:

1. Increment or decrement the counter.
2. Toggle between light and dark themes.
3. Receive a snackbar notification when the counter reaches a value of 5.
   
# How the Code Works ? 

## Folder Structure

1. Blocs: Contains the BLoC logic split into Counter_Bloc and Theme_Bloc.

2. Views: Contains the UI code for the counter screen.

3. Main: The entry point of the application.

## Key Components

### 1. CounterBloc

This BLoC manages the state of the counter.

  1. Events:
  
  - IncrementCounter: Increases the counter by 1.
  
  - DecrementCounter: Decreases the counter by 1.
  
  2. State:
  
  - CounterValue: Holds the current value of the counter.
  
  - Logic: The BLoC listens to CounterBlocEvent events and updates the state based on the event type.

### 2. ThemeBlocBloc

  This BLoC manages the app's theme.
  
  1. Events:
  
  - Toggletheme: Toggles between light and dark themes.
  
  2. State:
  
  - LighTheme: Represents the light theme.
  
  - DarkTheme: Represents the dark theme.
  
  3. Logic: The BLoC toggles the theme state whenever a Toggletheme event is received.

### 3. Main App Flow

- Entry Point: The main function initializes the app and wraps it with MultiBlocProvider to provide both CounterBloc and ThemeBlocBloc to the widget tree.

### 4. Theme Management:

- BlocBuilder<ThemeBlocBloc, ThemeBlocState> rebuilds the MaterialApp with the appropriate theme (ThemeData.light or ThemeData.dark) based on the current state.

### 5. Counter Screen:

- The Counter screen displays the current counter value and provides buttons to increment or decrement it.

- A BlocListener<CounterBloc, CounterBlocState> listens for state changes. When the counter reaches 5, a snackbar notification is shown.

- The BlocBuilder<CounterBloc, CounterBlocState> rebuilds the counter text whenever the state changes.
