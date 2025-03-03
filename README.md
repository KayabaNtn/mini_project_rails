# 📌 Documentation

## 1️⃣ **Giới thiệu**
- Mini project Ruby on Rails với các chức năng cơ bản như Authentication, CRUD
- Thông tin phiên bản: Ruby(3.3.6), Rails(8.0.1)
- Cấu trúc code: theo mô hình MVC

## 2️⃣ **Chi tiết API**

### 2.1. **Lấy danh sách Posts**
🔹**Endpoint**:  
```GET /api/v1/posts/index```

🔹 **Response**:

```json
{
  "success": true,
  "code": 200,
  "message": "Success",
  "data": {
    "posts": [
      {
        "data": {
          "id": "1",
          "type": "post",
          "attributes": {
            "title": "Post 1",
            "content": "Conten of post 1",
            "created_at": "2025-03-03T14:43:32.347Z",
            "updated_at": "2025-03-03T14:43:32.347Z"
          }
        }
      },
      {
        "data": {
          "id": "2",
          "type": "post",
          "attributes": {
            "title": "My title",
            "content": "My content",
            "created_at": "2025-03-03T14:48:58.171Z",
            "updated_at": "2025-03-03T14:48:58.171Z"
          }
        }
      }
    ],
    "pagy": {
      "vars": {
        "count_args": [
          "all"
        ],
        "ends": true,
        "limit": 20,
        "outset": 0,
        "page": 1,
        "page_param": "page",
        "size": 7,
        "items": true,
        "count": 2
      },
      "count": 2,
      "page": 1,
      "outset": 0,
      "limit": 20,
      "offset": 0,
      "last": 1,
      "from": 1,
      "to": 2,
      "in": 2,
      "prev": null,
      "next": null
    }
  }
}
```

🔹 **Response Code**:

| Code | Mô tả      |
| ---- | ---------- |
| 200  | Thành công |

---

### 2.2. **Lấy thông tin một Post**

🔹 **Endpoint**:

```GET /api/v1/posts/show```

🔹 **Request body**:
```
{
  "post": {
    "id": 1
  }
}
```

🔹 **Response**:

```json
{
    "success": true,
    "code": 200,
    "message": "Success",
    "data": {
        "id": 1,
        "title": "Post 1",
        "content": "Conten of post 1",
        "created_at": "2025-03-03T14:43:32.347Z",
        "updated_at": "2025-03-03T14:43:32.347Z"
    }
}
```

🔹 **Response Code**:

| Code | Mô tả          |
| ---- | -------------- |
| 200  | Thành công     |
| 404  | Không tìm thấy |

---

### 2.3. **Tạo mới Post**

🔹 **Endpoint**:

```POST /api/v1/posts/create```

🔹 **Request body**:
```
{
    "post": {
        "title": "Post 1",
        "content": "Content 1"
    }
}
```

🔹 **Response**:

```json
{
    "success": true,
    "code": 200,
    "message": "Success",
    "data": {
        "id": 3,
        "title": "Post 1",
        "content": "Content 1",
        "created_at": "2025-03-03T16:43:52.169Z",
        "updated_at": "2025-03-03T16:43:52.169Z"
    }
}
```

🔹 **Response Code**:

| Code | Mô tả                |
| ---- | -------------------- |
| 201  | Tạo thành công       |
| 400  | Dữ liệu không hợp lệ |

---

### 2.4. **Cập nhật Post**

🔹 **Endpoint**:

```PUT /api/v1/posts/update```

🔹 **Request body**:

```
{
    "post": {
        "id": 1,
        "title": "Title updated",
        "content": "Content updated"
    }
}
```

🔹 **Response**:

```json
{
    "success": true,
    "code": 200,
    "message": "Success",
    "data": {
        "id": 1,
        "title": "Title updated",
        "content": "Content updated",
        "created_at": "2025-03-03T14:43:32.347Z",
        "updated_at": "2025-03-03T16:49:48.469Z"
    }
}
```

🔹 **Response Code**:

| Code | Mô tả               |
| ---- | ------------------- |
| 200  | Cập nhật thành công |
| 404  | Không tìm thấy      |

---

### 2.5. **Xóa Post**

🔹 **Endpoint**:

```
DELETE /api/v1/posts/destroy
```

🔹 **Request body**:
```
{
  "post": {
    "id": 2
  }
}
```

🔹 **Response**:

```json
{
    "success": true,
    "code": 200,
    "message": "Delete success",
    "data": {}
}
```

🔹 **Response Code**:

| Code | Mô tả          |
| ---- | -------------- |
| 200  | Xóa thành công |
| 404  | Không tìm thấy |

---

## **Note**
- Project, tài liệu đang trong quá trình hoàn thiện.
