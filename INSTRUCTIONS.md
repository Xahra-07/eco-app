# G-Smart Monitor — FlutterFlow Import Instructions

> **App Name:** G-Smart Monitor  
> **Tagline:** Grow it smartly  
> **Type:** IoT Greenhouse Monitoring App  
> **Skill level:** Complete beginner  

---

## Screens Overview

| # | Screen | Route | Description |
|---|--------|-------|-------------|
| 1 | Splash | `/` | Green logo screen, auto-navigates after 2.5s |
| 2 | Welcome | `/welcome` | Farmer hero image + Register/Login buttons |
| 3 | Login | `/login` | Email/password + Apple/Google social login |
| 4 | Register | `/register` | Email/password + social login |
| 5 | Name Page | `/namePage` | Username entry (onboarding) |
| 6 | Add Device | `/addDevice` | Device attachment (onboarding) |
| 7 | Enter Phone | `/enterPhone` | SIM phone number entry |
| 8 | Device Added | `/deviceAdded` | Success confirmation |
| 9 | Home | `/home` | Sensor data dashboard |
| 10 | Events | `/events` | Alert/event notification list |

---

## Navigation Flow

```
Splash (auto 2.5s) ──→ Welcome
                         ├──→ Register ──→ Name Page ──→ Add Device ──→ Enter Phone ──→ Device Added ──→ Home
                         └──→ Login ──→ Home
                                           │
                                           └──→ Menu (hamburger) ──→ Events
                                                                       └──→ Back ──→ Home
```

---

## Theme / Colors

### Colors
| Name | Hex Code | Usage |
|------|----------|-------|
| Primary Green | `#1B9B32` | All green backgrounds, buttons, icons, values |
| Primary Dark Green | `#148A28` | Gradient end |
| White | `#FFFFFF` | Buttons on green, card backgrounds |
| Light Green BG | `#F5FAF5` | Home page background |
| Card Border | `#E8F5E9` | Sensor card borders |
| Red Warning | `#E53935` | Warning events, notification dots |
| Text Dark | `#1A1A1A` | Headings on white |
| Text Grey | `#757575` | Labels |
| Text Light Grey | `#9E9E9E` | Subtle text |

### Fonts
- **Headings:** Outfit (bold)
- **Body:** Readex Pro (regular/medium)

---

## How to Build Each Page

### Page 1: Splash Screen
- Full green background (`#1B9B32`)
- Centered: leaf/eco icon (white) + "G-Smart Monitor" text + "Grow it smartly" tagline
- **Action:** Auto-navigate to Welcome after 2.5 seconds (use "Wait" + "Navigate To" in FlutterFlow)

### Page 2: Welcome
- Top: farmer photo (upload or use stock image)
- Bottom: green gradient card with "Hello, Farmer" + description
- Two buttons: "Register" (white, filled) and "Login" (white, outlined)

### Page 3: Login
- Full green background
- "Welcome Back" title, subtitle
- Email field (envelope icon, underline border, white text)
- Password field (lock icon, visibility toggle, underline border)
- "Forgot your password?" link
- "or" divider + Apple/Google social buttons (outlined pill shape)
- White "Login" button at bottom
- "Don't have an account? Register" link

### Page 4: Register
- Same layout as Login but with "Register" title
- Button goes to Name Page instead of Home
- Footer: "Already have an account? Login"

### Page 5: Name Page (Onboarding)
- Green background
- "What should we call you?" + description
- Username field (person icon, underline)
- White "Continue" button at bottom → Add Device

### Page 6: Add Device (Onboarding)
- Green background
- "Add your Device" + description
- "Add Device" row with + circle icon
- White "Continue" button → Enter Phone

### Page 7: Enter Phone Number
- Green background
- "Enter Your Phone Number" + description about SIM
- "+234" prefix + phone number input (underline)
- White "Continue" button → Device Added

### Page 8: Device Added (Success)
- Green background
- "Add your Device" + description
- Card with "Greenhouse 1", "ID: 1344295024", "Added" checkmark
- White "Continue" button → Home

### Page 9: Home Dashboard
- Light green background (`#F5FAF5`)
- "Hello, Nifemi 🌿" + hamburger menu button (with red notification dot)
- Greenhouse illustration image (rounded 16px)
- Overlapping device info card: "Greenhouse 1 / ID" + refresh icon
- Sensor grid (3 rows):
  - Row 1: Temperature (23°c) | Humidity (74%) | CO2 (99.8%)
  - Row 2: Sunlight (200 W/m) | Soil Moisture (90%, checked date)
  - Row 3: Status (Online) | Battery (85%) | Last Sync (20 mins ago)
- Footer: "G-Smart Monitor / Grow it smartly"

### Page 10: Events
- Greenhouse hero image with overlaid "< Back" chip
- "Events" title + Device ID
- Scrollable event cards:
  - HUMIDITY LOW (red warning card, 5hr ago)
  - Battery Low (normal card, 3 days)
  - CO2 Levels High (normal card, 1 mon)
  - Battery Low (normal card, 3 days)
  - Temperature High (normal card, 1 mon)
- Footer branding

---

## File Reference

```
app_2/
├── pages/
│   ├── splash/
│   │   ├── splash_model.dart
│   │   └── splash_widget.dart
│   ├── welcome/
│   │   ├── welcome_model.dart
│   │   └── welcome_widget.dart
│   ├── login/
│   │   ├── login_model.dart
│   │   └── login_widget.dart
│   ├── register/
│   │   ├── register_model.dart
│   │   └── register_widget.dart
│   ├── name_page/
│   │   ├── name_page_model.dart
│   │   └── name_page_widget.dart
│   ├── add_device/
│   │   ├── add_device_model.dart
│   │   └── add_device_widget.dart
│   ├── enter_phone/
│   │   ├── enter_phone_model.dart
│   │   └── enter_phone_widget.dart
│   ├── device_added/
│   │   ├── device_added_model.dart
│   │   └── device_added_widget.dart
│   ├── home/
│   │   ├── home_model.dart
│   │   └── home_widget.dart
│   └── events/
│       ├── events_model.dart
│       └── events_widget.dart
├── INSTRUCTIONS.md    ← This file
└── (original UI design PNGs)
```

---

## Tips

1. **Green screens (Splash–Device Added):** All share the same `#1B9B32` green background. Set it once in your theme and reuse.
2. **Form fields:** All use white underline-style inputs (no borders, no fill). In FlutterFlow, set input border to "Underline", color to white/50% opacity.
3. **Greenhouse images:** Upload your actual greenhouse photos to FlutterFlow assets and replace the placeholder URLs.
4. **Sensor grid:** In FlutterFlow, use Row + Container widgets. Each sensor tile is a Container with rounded corners, border, icon, label, and value.
5. **Notification dot:** On the Home page hamburger menu, use a Stack with a small red circle Container positioned top-right.
