# App 2: G-Smart Monitor — FlutterFlow Drag & Drop Build Guide

## FlutterFlow Panel Reference (Based on Actual UI)

### On a Container:
| Field Name | Where | What To Do |
|-----------|-------|------------|
| **Padding** | Right panel → T, B, L, R boxes | Click next to each letter and type a number |
| **Width / Height** | Container Properties section | Type PX value OR click **∞** button for full width/height |
| **Fill Color** | Container Properties | Click swatch to set background color |
| **Border Color** | Container Properties | Separate field from Fill Color |
| **Border Radius** | Container Properties | 4 corner boxes with visual preview |
| **Border Width** | Container Properties | Thickness of border line |
| **Box Shadow** | Container Properties (collapsed) | Click to expand for shadow settings |
| **Gradient** | Container Properties (collapsed) | Click toggle to enable gradient fill |

### On a Column or Row:
| Field Name | Where | What To Do |
|-----------|-------|------------|
| **Padding** | Right panel → T, B, L, R boxes | Same as Container |
| **Main Axis Size** | Column/Row Properties | Min icon (shrink) or **Max** icon (fill space) |
| **Main Axis Alignment** | Column/Row Properties | 6 icons: Start, Center, End, SpaceBetween, SpaceAround, SpaceEvenly |
| **Scrollable** | Column/Row Properties | Toggle on for scrollable content |
| **Items Spacing** | Column/Row Properties | Space between children |

### On any widget:
| Field Name | Where | What To Do |
|-----------|-------|------------|
| **Actions** | ▶ tab at top of right panel | Set On Tap, On Load actions |
| **Opacity** | Visibility section | Slider from 0 to 1 |
| **Expansion** | Below Visibility | Flex/Expanded behavior |

---

## Project Setup

1. Go to **app.flutterflow.io** → **Create New** → **Blank App**
2. Name: **G-Smart Monitor**
3. Platform: **Mobile** (Android + iOS)

### Theme Setup
1. Click **Theme Settings** (paint palette icon in left sidebar)
2. **Colors**:
   - Primary: `#2E7D32` (Green)
   - Secondary: `#43A047` (Medium Green)
   - Tertiary: `#66BB6A` (Light Green)
   - Primary Text: `#FFFFFF` (White)
   - Secondary Text: `#E8F5E9` (Very Light Green)
   - Primary Background: `#2E7D32`
   - Secondary Background: `#FFFFFF`
3. **Typography**: Set all fonts to **Readex Pro** or **Inter**

---

## SCREENS OVERVIEW

| # | Page Name | What It Shows |
|---|-----------|---------------|
| 1 | Splash | Green screen with G-Smart logo |
| 2 | Welcome | Farmer photo + Register/Login buttons |
| 3 | Login | Green form with email + password |
| 4 | Register | Green form (mirror of Login) |
| 5 | NamePage | Username input screen |
| 6 | AddDevice | Device ID input |
| 7 | DeviceAdded | Success confirmation |
| 8 | Home | Dashboard with sensor readings |
| 9 | Events | Alert/event log list |

---

## PAGE 1: Splash

### Layout: Full green screen with centered logo

1. **Create Page**: `Splash` → Set as **Initial Route** ✅
2. **Scaffold** → Fill Color: `#2E7D32`

3. **Add Column**
   - **Column Properties**:
     - Main Axis Size: **Max** icon (second icon — fills full height)
     - Main Axis Alignment: **Center** icon
     - Cross Axis Alignment: **Center**

4. **Add Icon**: Choose `eco` or `local_florist`
   - Color: `#FFFFFF`, Size: `64`
   - Padding: B = `12`

5. **Add Text**: `G-Smart Monitor`
   - Font Size: `28`, Weight: `Bold`, Color: `#FFFFFF`
   - Padding: B = `4`

6. **Add Text**: `Grow it smartly`
   - Font Size: `14`, Color: `#E8F5E9`

7. **Auto-navigate setup**:
   - Select the **Page** (click page name at top of widget tree)
   - **Actions tab** (▶) → On Page Load:
     - Action 1: **Wait** → Duration: `2000` ms
     - Action 2: **Navigate To** → `Welcome`

---

## PAGE 2: Welcome

### Layout: Farmer photo on top + green curved section at bottom

1. **Create Page**: `Welcome`
2. **Scaffold** → Fill Color: `#2E7D32`

3. **Add a Stack**

4. **Inside Stack → Add Image**
   - Upload a farmer/greenhouse image
   - Width: click **∞**, Height: click **∞**
   - Fit: `Cover`

5. **Inside Stack → Add Column**
   - **Column Properties**:
     - Main Axis Size: **Max** icon
     - Main Axis Alignment: **End** icon (pushes content to bottom)

6. **Inside Column → Add Container** (green bottom card)
   - Width: click **∞**
   - Fill Color: `#2E7D32`
   - Border Radius: Top-Left = `32`, Top-Right = `32`, Bottom-Left = `0`, Bottom-Right = `0`
   - Padding: L = `32`, R = `32`, T = `28`, B = `32`

7. **Inside Container → Add Column**

8. **Add Text**: `Hello, Farmer`
   - Size: `32`, Bold, Color: `#FFFFFF`
   - Padding: B = `8`

9. **Add Text**: `Let's monitor critical data that affect your crops, so that you can boost your yield.`
   - Size: `14`, Color: `#E8F5E9`
   - Padding: B = `24`

10. **Add Button**: Text = `Register`
    - Width: click **∞**, Height: `52`
    - Fill Color: `#FFFFFF`
    - Text Color: `#2E7D32`, Size: `16`, Weight: `600`
    - Border Radius: `8`
    - **Actions tab** (▶) → On Tap → **Navigate To** → `Register`
    - Padding: B = `12`

11. **Add Button**: Text = `Login`
    - Width: click **∞**, Height: `52`
    - Fill Color: `#FFFFFF`
    - Text Color: `#1A1A1A`, Size: `16`, Weight: `Bold`
    - Border Radius: `8`
    - **Actions tab** (▶) → On Tap → **Navigate To** → `Login`

---

## PAGE 3: Login

### Layout: Full green background with form fields

1. **Create Page**: `Login`
2. **Scaffold** → Fill Color: `#2E7D32`

3. **Add Column**
   - Padding: L = `32`, R = `32`, T = `60`
   - **Column Properties**: Main Axis Size: **Max**, Scrollable: **On**

4. **Add Text**: `Welcome Back`
   - Size: `32`, Bold, Color: `#FFFFFF`
   - Padding: B = `8`

5. **Add Text**: `Glad your back, Let's get in and back to growing`
   - Size: `14`, Color: `#E8F5E9`
   - Padding: B = `40`

6. **EMAIL FIELD — Add TextField**
   - Hint Text: `Email Address`
   - Hint Style Color: `#FFFFFF`
   - Text Style Color: `#FFFFFF`
   - Prefix Icon: `mail_outline`, Color `#FFFFFF`
   - Border Type: **Underline Only**
   - Border Color: `#FFFFFF`
   - Fill Color: Transparent
   - Padding: B = `24`

7. **PASSWORD FIELD — Add TextField**
   - Hint Text: `Password`
   - Obscure Text: **On**
   - Hint/Text Color: `#FFFFFF`
   - Prefix Icon: `lock_outline`, Color `#FFFFFF`
   - Suffix Icon: `visibility_off`, Color `#FFFFFF`
   - Border Type: **Underline Only**, Border Color: `#FFFFFF`
   - Padding: B = `8`

8. **Add Align** widget (right-aligned):
   - Alignment: X = `1` (right)
   - Inside → Text: `Forgot your password?` — Color `#FFFFFF`, Size `13`
   - Padding: B = `24`

9. **Add Center widget → Text**: `or`
   - Color: `#FFFFFF`, Size `14`
   - Padding: B = `20`

10. **SOCIAL BUTTONS — Add Row**
    - **Row Properties** → Main Axis Alignment: **Center**
    - Items Spacing: `16`
    
    **Apple button** — Add Container:
    - Border Width: `2`, Border Color: `#FFFFFF`, Border Radius: `24`
    - Padding: T = `12`, B = `12`, L = `24`, R = `24`
    - Inside → Row: Icon `apple` (White, `20`) + Text `Apple` (White, `14`, Bold)
    
    **Google button** — Add Container:
    - Same border/radius/padding
    - Inside → Row: Icon `g_mobiledata` (White, `20`) + Text `Google` (White, `14`, Bold)
    
    Padding below Row: B = `40`

11. **Add Spacer** (pushes Login button to bottom)

12. **Add Button**: `Login`
    - Width: click **∞**, Height: `52`
    - Fill Color: `#FFFFFF`
    - Text Color: `#2E7D32`, Size `16`, Weight `600`
    - Border Radius: `8`
    - **Actions tab** (▶) → On Tap → **Navigate To** → `Home`
    - Padding: B = `12`

13. **Add Row** (centered):
    - **Row Properties** → Main Axis Alignment: **Center**
    - Text `Don't have an account? ` (White, `14`)
    - Text `Register` (White, `14`, Underline, Bold)
      - **Actions tab** (▶) → On Tap → **Navigate To** → `Register`
    - Padding: B = `32`

---

## PAGE 4: Register

### Layout: Identical to Login — just change texts

1. **Create Page**: `Register`
2. **Copy the entire Login page structure**, then change:
   - Title: `Register`
   - Subtitle: `Create an account, We are eager to serve you.`
   - Button text: `Register`
   - Button **Actions tab** → Navigate To → `NamePage`
   - Bottom link: `Already have an account? ` + `Login` → Navigate To → `Login`

---

## PAGE 5: NamePage

### Layout: Green screen + title + username field + Continue at bottom

1. **Create Page**: `NamePage`
2. **Scaffold** → Fill Color: `#2E7D32`

3. **Add Column**
   - Padding: L = `32`, R = `32`, T = `80`
   - **Column Properties**: Main Axis Size: **Max**

4. **Add Text**: `What should we call you?`
   - Size: `28`, Bold, Color: `#FFFFFF`
   - Padding: B = `12`

5. **Add Text**: `This will serve as your username in the app, so you can choose a nickname.`
   - Size: `14`, Color: `#E8F5E9`
   - Padding: B = `32`

6. **Add TextField**
   - Hint: `Username`, Hint Color: `#FFFFFF`
   - Text Color: `#FFFFFF`
   - Prefix Icon: `person_outline`, Color `#FFFFFF`
   - Border Type: **Underline Only**, Border Color: `#FFFFFF`

7. **Add Spacer**

8. **Add Button**: `Continue`
   - Width: click **∞**, Height: `52`
   - Fill Color: `#FFFFFF`, Text Color: `#2E7D32`, Weight `600`
   - Border Radius: `8`
   - **Actions tab** (▶) → On Tap → **Navigate To** → `AddDevice`
   - Padding: B = `32`

---

## PAGE 6: AddDevice

### Layout: Green screen + title + device input row + Continue

1. **Create Page**: `AddDevice`
2. **Scaffold** → Fill Color: `#2E7D32`

3. **Add Column**
   - Padding: L = `32`, R = `32`, T = `80`
   - **Column Properties**: Main Axis Size: **Max**

4. **Add Text**: `Add your Device`
   - Size: `28`, Bold, Color: `#FFFFFF`
   - Padding: B = `8`

5. **Add Text**: `Attach your device to your account to access functionality`
   - Size: `14`, Color: `#E8F5E9`
   - Padding: B = `28`

6. **Add Container** (device input row):
   - Width: click **∞**
   - Fill Color: `#3E8E41`
   - Border Radius: `8`
   - Padding: T = `14`, B = `14`, L = `16`, R = `16`
   - Inside → Add Row:
     - **Row Properties** → Main Axis Alignment: **SpaceBetween**
     - Text `Add Device` — White, Bold, Size `14`
     - Icon `add_circle_outline` — White, Size `24`
   - **Actions tab** (▶) → On Tap → **Navigate To** → `DeviceAdded`

7. **Add Spacer**

8. **Add Button**: `Continue`
   - Width: click **∞**, Height: `52`
   - Fill Color: `#FFFFFF`, Text Color: `#2E7D32`
   - Border Radius: `8`
   - **Actions tab** (▶) → On Tap → **Navigate To** → `DeviceAdded`
   - Padding: B = `32`

---

## PAGE 7: DeviceAdded

### Layout: Same as AddDevice but shows "Added ✓"

1. **Create Page**: `DeviceAdded`
2. **Scaffold** → Fill Color: `#2E7D32`

3. **Same Column structure** as AddDevice

4. **Add Text**: `Add your Device` — Size `28`, Bold, White
   - Padding: B = `8`

5. **Add Text**: `Sync your device with the app to access functionality`
   - Size `14`, Color `#E8F5E9`
   - Padding: B = `28`

6. **Add Container** (success card):
   - Width: click **∞**, Fill Color: `#3E8E41`, Border Radius: `8`
   - Padding: T = `14`, B = `14`, L = `16`, R = `16`
   - Inside → Add Row:
     - Column (left side):
       - Text `Greenhouse 1` — White, Bold, Size `15`
       - Text `ID: 1344295024` — Color `#FFFFFFB3`, Size `12`
     - **Spacer**
     - Row (right side):
       - Text `Added` — White, Size `13`
       - Icon `check_circle` — White, Size `20`

7. **Add Spacer**

8. **Add Button**: `Continue`
   - Width: click **∞**, Height: `52`
   - Fill Color: `#FFFFFF`, Text Color: `#2E7D32`, Border Radius: `8`
   - **Actions tab** (▶) → On Tap → **Navigate To** → `Home`
   - Padding: B = `32`

---

## PAGE 8: Home (Dashboard)

### Layout: Light background, greeting, greenhouse image, sensor cards

1. **Create Page**: `Home`
2. **Scaffold** → Fill Color: `#F1F8E9` (very light green)

3. **Add Column**
   - Padding: L = `20`, R = `20`, T = `16`
   - **Column Properties** → Scrollable: **On**

4. **HEADER — Add Row**
   - **Row Properties** → Main Axis Alignment: **SpaceBetween**
   - Child 1: Text `Hello, Nifemi 🌿` — Black, Bold, Size `24`
   - Child 2: Container (menu button)
     - Width: `44`, Height: `44`, Border Radius: `22`
     - Border Width: `2`, Border Color: `#66BB6A`
     - Fill Color: `#F5F5F5`
     - Inside → Icon `menu`, Color `#2E7D32`, Size `24`
     - **Actions tab** (▶) → On Tap → **Navigate To** → `Events`
   - Padding: B = `16`

5. **GREENHOUSE IMAGE — Add a Stack**
   - Put Stack inside a Container with Width: click **∞**, Height: `280`
   
   **Inside Stack → Add Image**:
   - Upload greenhouse illustration
   - Width: click **∞**, Height: `240`, Fit: `Cover`, Border Radius: `16`
   
   **Inside Stack → Add Container** (name card):
   - Alignment section: X = `0` (center), Y = `1` (bottom)
   - Width: `260`, Height: `70`
   - Fill Color: `#FFFFFF`, Border Radius: `12`
   - **Box Shadow**: expand it → Blur = `8`, Color = `#1A000000`
   - Padding: T = `14`, B = `14`, L = `14`, R = `14`
   - Inside → Row:
     - Column:
       - Text `Greenhouse 1` (Bold, `16`)
       - Text `ID: 1344295024` (Color `#9E9E9E`, `12`)
     - **Spacer**
     - Icon `refresh`, Color `#2E7D32`, Size `24`
   
   Padding below Stack: B = `20`

6. **ROW 1: 3 SENSOR CARDS — Add Row**
   - Items Spacing: `10`
   
   **For each of the 3 cards:**
   - Add Container → Right-click → **Wrap in → Expanded**
   - Fill Color: `#FFFFFF`, Border Radius: `12`
   - Border Width: `1`, Border Color: `#E0E0E0`
   - Padding: T = `12`, B = `12`, L = `12`, R = `12`
   - Inside → Column (**Cross Axis Alignment: Start**):
     - Icon (see table), Color `#9E9E9E`, Size `24`
     - Items Spacing: `8` (in Column Properties)
     - Text (label) — Size `12`, Color `#9E9E9E`
     - Text (value) — Size `16`, Bold, Color `#2E7D32`
   
   | Card | Icon | Label | Value |
   |------|------|-------|-------|
   | 1 | `thermostat` | Temperature | 23°c |
   | 2 | `water_drop` | Humidity | 74% |
   | 3 | `cloud` | CO2 | 99.8% |
   
   Padding below Row: B = `10`

7. **ROW 2: 2 CARDS — Add Row**
   - Items Spacing: `10`
   
   **Sunlight card** (wrap in Expanded):
   - Same white card style as above
   - Column: Icon `light_mode` + Text `Sunlight` (grey, 12) + Text `200 W/m` (Green, Bold, 16)
   
   **Soil Moisture card** (wrap in Expanded):
   - Same white card style
   - Column:
     - Text `Soil Moisture` — Size `12`, Color `#9E9E9E`
     - Row: Icon `water_drop` (Green, `16`) + Text `90%` (Bold, Green)
     - Row: Icon `check_circle` (Green, `14`) + Text `Checked 11/05/2024` (Size `11`, Green)
   
   Padding: B = `10`

8. **ROW 3: 3 CARDS — Add Row**
   - Same 3-card Expanded layout as Row 1
   
   | Card | Icon | Label | Value |
   |------|------|-------|-------|
   | 1 | `wifi` | Status | Online |
   | 2 | `battery_std` | Battery | 85% |
   | 3 | `sync` | Last Sync | 20 mins ago |
   
   Padding: B = `20`

9. **FOOTER — Add Center widget → Text**: `G-Smart Monitor`
   - Size `12`, Color `#9E9E9E`

---

## PAGE 9: Events

### Layout: Greenhouse image at top + alert card list

1. **Create Page**: `Events`
2. **Scaffold** → Fill Color: `#FFFFFF`

3. **Add Column**
   - **Column Properties** → Scrollable: **On**

4. **HERO IMAGE — Add Stack**
   - Put inside Container: Width click **∞**, Height: `200`
   
   **Inside Stack → Image**: greenhouse illustration, Width click **∞**, Fit `Cover`
   
   **Inside Stack → Container** (Back button):
   - Alignment: X = `-1` (left), Y = `-1` (top)
   - Padding on Alignment: T = `16`, L = `16`
   - Container: Fill Color `#FFFFFF`, Border Radius `20`
   - Padding: L = `12`, R = `12`, T = `8`, B = `8`
   - Inside → Row: Icon `chevron_left` (Size `20`) + Text `Back` (Size `14`)
   - **Actions tab** (▶) → On Tap → **Navigate Back**

5. **Below the Stack → Add Column** with Padding: L = `20`, R = `20`, T = `16`

6. **Add Text**: `Events` — Size `24`, Bold, Black
   - Padding: B = `4`

7. **Add Text**: `ID: 1344295024` — Size `13`, Color `#9E9E9E`
   - Padding: B = `16`

8. **EVENT 1 — CRITICAL (Humidity Low)** → Add Container:
   - Width: click **∞**, Fill Color: `#FFEBEE` (light red)
   - Border Radius: `12`
   - Padding: T = `16`, B = `16`, L = `16`, R = `16`
   - Inside → Column:
     - Add Row:
       - Container (red pill): Fill Color `#E53935`, Border Radius `4`
         - Padding: L = `12`, R = `12`, T = `6`, B = `6`
         - Inside → Row: Icon `warning` (White, `16`) + Text `HUMIDITY LOW` (White, Bold, `13`)
       - **Spacer**
       - Text `5hr ago` — Color `#E53935`, Size `12`
     - Items Spacing: `8`
     - Text `WARNING: Humidity has dropped below 85%.` — Color `#424242`, Size `14`
   - Padding below: B = `12`

9. **EVENT 2 — Battery Low** → Add Container:
   - Width: click **∞**, Fill Color: `#FFFFFF`
   - Border Width: `1`, Border Color: `#E0E0E0`
   - Border Radius: `12`
   - Padding: T = `16`, B = `16`, L = `16`, R = `16`
   - Inside → Column:
     - Row:
       - Icon `battery_alert` (Color `#FF9800`, `20`)
       - Text `Battery Low` (`#FF9800`, Bold, `15`)
       - **Spacer**
       - Text `3 days` (`#9E9E9E`, `12`)
     - Items Spacing: `6`
     - Text `Device battery has fallen below 15%.` — `#424242`, `14`
   - Padding below: B = `12`

10. **EVENT 3 — CO2 Levels High**:
    - Same white card as Event 2
    - Icon: `cloud` (Color `#2E7D32`)
    - Title: `CO2 Levels High` (Color `#2E7D32`), Time: `1 mon`
    - Text: `CO2 levels have increased beyond optimal range`
    - Padding below: B = `12`

11. **EVENT 4 — Battery Low (duplicate)**: Same as Event 2
    - Padding below: B = `12`

12. **EVENT 5 — Temperature High**:
    - Same white card, Icon `thermostat`, Title `Temperature High`, Time `1 mon`

---

## Navigation Flow

```
Splash (auto 2s) ──→ Welcome
                       ├──→ Register ──→ NamePage ──→ AddDevice ──→ DeviceAdded ──→ Home
                       └──→ Login ──→ Home
                                        └──→ Events (via menu button)
                                               └──→ Navigate Back → Home
```

---

## Reusable Pattern: Green Page Template

Pages 3-7 (Login, Register, NamePage, AddDevice, DeviceAdded) share this:

```
Scaffold (Fill Color: #2E7D32)
 └─ Column (Padding: L=32, R=32, T=60-80)
     │  Column Properties: Main Axis Size = Max
     ├─ Text (Title — White, Bold, 28-32)
     ├─ Text (Subtitle — #E8F5E9, 14)
     ├─ [Form content]
     ├─ Spacer
     └─ Button (Fill Color: White, Text: Green, Radius 8)
         Padding: B=32
```

Build Login first, then copy the structure for the others.

---

## Checklist

- [ ] Splash with auto-navigate (Actions → On Page Load)
- [ ] Welcome with farmer photo + green bottom section
- [ ] Login with email/password TextFields + social buttons
- [ ] Register (copy of Login, changed texts)
- [ ] NamePage with username TextField
- [ ] AddDevice with device button row
- [ ] DeviceAdded with success card
- [ ] Home dashboard with 8 sensor cards
- [ ] Events page with 5 alert cards
- [ ] All navigation via **Actions tab** (▶) → Navigate To
- [ ] Theme colors configured
