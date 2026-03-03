# Mochi App Blueprint

## Overview

Mochi is a Flutter application designed for photographers to manage and share their client galleries. It provides a clean and intuitive interface for viewing, searching, and organizing photo galleries. The application's architecture has been refactored for better organization and scalability.

## Project Structure

The project now follows a more organized structure:

*   **`lib/main.dart`**: The main entry point of the application, responsible for the primary navigation structure (`MainNavigation`).
*   **`lib/screens/`**: A directory containing all the individual screen widgets.
    *   `galeria_screen.dart`: The screen for displaying photo galleries.
    *   `perfil_screen.dart`: The user's profile screen.
    *   `config_screen.dart`: The settings screen.
*   **`lib/utils/`**: A directory for shared utility classes.
    *   `colors.dart`: The `MochiColors` class, which defines the app's color palette.

## Style and Design

*   **Theme:** Modern and clean, with a consistent color scheme and clear typography.
*   **Font:** Default sans-serif for readability.
*   **Colors (MochiColors):**
    *   `azulOscuro`: `0xFF2B3A67`
    *   `azulBoton`: `0xFF567094`
    *   `fondoGris`: `0xFFF5F5F5`
    *   `amarilloMochi`: `0xFFFFC107`
*   **Layout:** Card-based for galleries, list-based for menus, with consistent styling.

## Features

*   **Main Navigation:** A `BottomNavigationBar` in `main.dart` controls navigation between:
    *   Inicio (Home)
    *   Sesiones (Sessions)
    *   Galería (Gallery)
    *   Perfil (Profile)

*   **Branded AppBar:** A consistent AppBar with the business logo and name is used across all screens.

*   **Galería Screen (`galeria_screen.dart`):**
    *   Displays a list of private galleries with a search bar.
    *   **Simplified Cards:** Gallery cards show the event type, date, and thumbnail. The icons have been removed for a cleaner look.
    *   **Simplified Button:** The button on each card says "VER".
    *   **Clean Titles:** The title "Mis galerías privadas" is displayed without any extra characters.

*   **Perfil Screen (`perfil_screen.dart`):**
    *   Displays user information and navigation options.
    *   **Minimalist Menu:** The menu items ("Configuración", "Información de trabajo", "Editar información") are displayed without leading icons for a cleaner, text-only appearance.

*   **Configuración Screen (`config_screen.dart`):**
    *   A nested screen with a functional back-navigation title.
    *   **Custom Navigation:** The default back arrow in the AppBar has been removed. Instead, a tappable text `"< CONFIGURACIÓN"` is used in the body to navigate back, creating a more integrated UI.
    *   Features a framed layout for configuration options.

## Current Plan

*   The Profile screen's menu has been simplified by removing all leading icons, creating a more minimalist and text-focused design.
