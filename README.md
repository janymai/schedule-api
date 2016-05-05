# Schedule Application

## Tasks

### Login/signup

The informations are needed:

* User Name (require)/ (only for signup)
* Last Name (require)/ (only for signup)
* Email (require / need the @asnet.com.vn)
* Password (require)

### Home page

* This is main screen of the application. It will display all the informations:
* The schedule will update every hour

**If is not an user**
  * Show the home page with image and signup button

**If is an user**
  * Future schedules rank by the time
  * Past schedules rank by the time
  * Navigation bar with the links to:
    * Logout
    * Create a new schedule
    * My schedules

### My schedule
 * Display the user's schedules

### Create a new schedule

This screen is where users will create a schedule:

The button with 2 options:
 * Have team
 * No team

**If no team, it will display form to create a team**

  * Team Name (require and unique)
  * Team member (require and more than 1 member)
  * Email (require and need the @anset.com.vn)

 After create a team will move to next step create a new schedule

**If have team, it will display form to create a new schedule**

To create a schedule these infomations are needed:

  * Team
  * Timeline:
    * Open at
    * Finish at
  * Date
    * Date
    * Month
    * Current year

Complete create a new schedule will move to home page to see the schedule update


## Backend
3 table

#### user_tbl
|User |
|---|
| id  |
| user_name |
| email |
| password |
| auth_token |

#### user_team_tbl
|UserTeam |
|---|
| id  |
| user_id |
| team_id |

#### team_tbl
|Team |
|---|
| team_id  |
| team_name |

#### schedule_tbl
|Schedule |
|---|
| id  |
| team_id |
| time_open |
| time_finish |
| date |
| content |

### API
### User

#### User Login
**POST**
[DONE]
```
/sessions
```

#### User Registration
**POST**
[DONE]
```
/users
```

### Schedule

#### Get Schedules
**GET**
[DONE]
```
/schedules
```

#### Get Schedule
**GET**
[DONE]
```
/schedules/:schedule_id
```

#### Create schedule
**POST**
[DONE]
```
/users/:id/schedules
```

#### My schedules
**GET** [DONE]

```
/users/:id/schedules
```

#### Team
**POST**

```
/users/:id/team
```
