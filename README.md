## 1️⃣ **Giới thiệu**
- Mini project Ruby on Rails triển khai chức năng Authentication trong Ruby on Rails bằng gem devise, devise-jwt.
- Tài liệu về gem device: https://github.com/heartcombo/devise?tab=readme-ov-file
- Tài liệu về gem device-jwt: https://github.com/waiting-for-dev/devise-jwt
- Tham khảo thêm: https://sdrmike.medium.com/rails-7-api-only-app-with-devise-and-jwt-for-authentication-1397211fb97c
- Thông tin phiên bản: Ruby(3.3.6), Rails(8.0.1)
- Cấu trúc code theo mô hình MVC, một số thư mục chính:
  - `app/models`: Thư mục này chứa các model, mỗi model tương ứng với một bảng trong cơ sở dữ liệu.
  - `app/controllers`: Thư mục này chứa các controller, chịu trách nhiệm xử lý các yêu cầu từ người dùng. Controller nhận yêu cầu từ router, tương tác với model để lấy dữ liệu và trả về kết quả.
  - `config`: Chứa các file cấu hình, bao gồm `routes.rb` và `database.yml`.
  - `spec`: : Chứa các test spec.

## 2️⃣ **Chi tiết API**
### 2.1. **Registrations**
- Endpoint: `POST localhost:3000/api/v1/users`
- Request body:  
```
  {
    "user": {
      "email": "demo@gmail.com",
      "password": "password123",
      "password_confirmation": "password123"
    }
  }
```
### 2.2. **Sign in**
- Endpoint: `POST localhost:3000/api/v1/users/sign_in`
- Request body:  
```
  {
    "user": {
      "email": "demo@gmail.com",
      "password": "password123"
    }
  }
```
### 2.3. **Sign out**
- Endpoint: `DELETE localhost:3000/api/v1/users/sign_out`
- Token xác thực được gửi trong header Authorization.

3️⃣ **Cài đặt**
- Clone repo
- Cài: Ruby(3.3.6), Rails(8.0.1), MySQL
- Thêm `.env` theo  file `.env.example`
- Tạo DB và thực thi các migration: `rails db: create`, `rails db:migrate`
- Chạy lệnh: `rails secret`
- Đối với VSCode chạy lệnh: `EDITOR='code --wait' rails credentials:edit`, thêm `devise_jwt_secret_key: "key vừa được tạo bằng lệnh rails secret"`
- Chạy ứng dụng: `rails s`
