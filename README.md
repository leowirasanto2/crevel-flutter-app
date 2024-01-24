# Background

As a traveler, sometimes we need to see the preview of that place so we can decide whether to go there or maybe look for the other place.

# Solution

The Crevel app is one of the solution as it shows the preview of the travel destinations with images and stories at the particular destination.

In this app, user should able to:

- Search destinations
- Filter destination by tag
- See the current viral destinations
- See detail information of selected destination
- Additional information in story image form on each destination’s detail page

# UI/UX

https://excalidraw.com/#json=LMkJTB59yWiB9ElpAmeQs,AfXN7JLC_B_ijb_qYVndag

<aside>
💡 https://dribbble.com/shots/21184529-Amazing-Vacations-Visual-Language-Proposal-for-Travel-App ← as reference

</aside>

For this app, there will be 4 pages required:

- **Home Page**
  ![image](https://github.com/leowirasanto2/crevel-flutter-app/assets/156512514/befc318f-a6a0-4274-a6e2-2d45ef82799a)
  
- **Detail Page**
  ![image](https://github.com/leowirasanto2/crevel-flutter-app/assets/156512514/57fb0f3a-0339-4204-89ba-94d90b5ce038)
  
- **Saved Place Page**
  ![image](https://github.com/leowirasanto2/crevel-flutter-app/assets/156512514/5ae1773e-a268-4ff8-90cd-ad7fe34765e6)
  
- **All Place Page**
  ![image](https://github.com/leowirasanto2/crevel-flutter-app/assets/156512514/d4b86fb1-01c9-4e05-9476-f357761d8155)
  
## Page Flows
![image](https://github.com/leowirasanto2/crevel-flutter-app/assets/156512514/bd702c2e-beec-41b5-aa1e-c614d865d307)



# Contracts
There are 5 tables required for this app, the first one is Destination as the main table, following Location and Tag table as the reference for destination attributes. Two other tables are SavedPlace and Story table that refer to Destination table.
![image](https://github.com/leowirasanto2/crevel-flutter-app/assets/156512514/f11f70c4-83b8-4ace-9c23-b9979adf151f)

## API

Base url → `https://willaddthislater.com`

### **Home API (GET)**

- **Endpoint**
    
    `/home-content`
    
- **Response**
    
    ```json
    {
      "success": "true",
      "data": {
        "viral_destination": [
          {
            "id": "uid-1",
            "name": "destination name",
            "description": "description of the destination",
            "image_url": "https://picsum.photos/seed/travel/200/300",
            "location": {
              "long": 1.23123,
              "lat": 2.312312
            },
            "tags": {
              "id": "tag-id-here",
              "name": "tag name"
            }
          },
          {
            "id": "uid-2",
            "name": "destination name",
            "description": "description of the destination",
            "image_url": "https://picsum.photos/seed/travel/200/300",
            "location": {
              "long": 1.23123,
              "lat": 2.312312
            },
            "tags": {
              "id": "tag-id-here",
              "name": "tag name"
            }
          }
        ],
        "destination_tag": [
          {
            "id": "tag_id",
            "name": "tag name",
            "image_url": "https://picsum.photos/seed/travel/200/300"
          },
          {
            "id": "tag_id-2",
            "name": "tag name",
            "image_url": "https://picsum.photos/seed/travel/200/300"
          }
        ],
        "destination_placeholder": [
          {
            "id": "uid-1",
            "name": "destination name",
            "description": "description of the destination",
            "image_url": "https://picsum.photos/seed/travel/200/300",
            "location": {
              "long": 1.23123,
              "lat": 2.312312
            },
            "tags": {
              "id": "tag-id-here",
              "name": "tag name"
            }
          },
          {
            "id": "uid-1",
            "name": "destination name",
            "description": "description of the destination",
            "image_url": "https://picsum.photos/seed/travel/200/300",
            "location": {
              "long": 1.23123,
              "lat": 2.312312
            },
            "tags": {
              "id": "tag-id-here",
              "name": "tag name"
            }
          },
          {
            "id": "uid-1",
            "name": "destination name",
            "description": "description of the destination",
            "image_url": "https://picsum.photos/seed/travel/200/300",
            "location": {
              "long": 1.23123,
              "lat": 2.312312
            },
            "tags": {
              "id": "tag-id-here",
              "name": "tag name"
            }
          }
        ]
      }
    }
    ```
    

### **Destination API (GET)**

- **Endpoint**
    
    `/destination`
    
- **Request**
    
    If the request is empty, then it will get all destinations
    
    ```json
    {
      "tag_id": "based on tag id", //optional
      "destination_id": "query based on destination id", //optional
      "destination_name": "query based on destination name" //optional
    }
    ```
    
- **Response**
    
    ```json
    {
      "success": "true",
      "data": {
        "destinations": [
          {
            "id": "uid-1",
            "name": "destination name",
            "description": "description of the destination",
            "image_url": "https://picsum.photos/seed/travel/200/300",
            "location": {
              "long": 1.23123,
              "lat": 2.312312
            },
            "tags": {
              "id": "tag-id-here",
              "name": "tag name"
            }
          },
          {
            "id": "uid-1",
            "name": "destination name",
            "description": "description of the destination",
            "image_url": "https://picsum.photos/seed/travel/200/300",
            "location": {
              "long": 1.23123,
              "lat": 2.312312
            },
            "tags": {
              "id": "tag-id-here",
              "name": "tag name"
            }
          }
        ]
      }
    }
    ```
    

# Development Tools & Architecture

- **Flutter** is the first choice as development kit to build the Crevel App.
- **Firebase Store** is where I’ll put the database
- **BLOC** will be the state management of this project
- **GitHub** as the repository
- [**JSON Editor Online](https://jsoneditoronline.org/#right=local.yewaxu&left=local.tucexo) →** tool to create dummy json
