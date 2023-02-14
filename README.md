# Mô tả chương trình
Chương trình giúp người dùng có thể thêm thông tin về một bộ phim mình yêu thích, tìm kiếm phim và review về bộ phim mà mình đã xem
# Yêu cầu môi trường

- `ruby 2.7.x`
- `Rails 6.1.x`

# Cài đặt chương trình

- `bundle install`
- `yarn install --check-files`
- `rake db:migrate`
- `bundle exec rake assets:precompile`
- `rake db:seed` (khởi chạy sẵn dữ liệu)

# Chạy chương trình

- `rails s`
- Đăng nhập với tài khoản mặc định 
  - `email`: `demo@gmail.com`
  - `password`: `123456`

# Các chức năng đã hoàn thành

- [x] Layout gồm có navbar và content
- [x] Xác thực người dùng
- [x] Xem, cập nhật thông tin người dùng (email, avatar, name)
- [x] Xem, thêm, sửa, xoá thông tin một bộ phim
- [x] Xem, thêm, sửa, xoá thông tin một thể loại
- [x] Xem, thêm, sửa, xoá thông tin một đạo diễn
- [x] Xem, thêm, sửa, xoá thông tin một diễn viên
- [x] Xem, thêm Review về một bộ phim
# Các chức năng trong tương lai
- [ ] Phân quyên admin và user thông thường chỉ có admin mới có quyền thêm, sửa phim
- ...

# Note

- Khi sử dụng trên paiza sẽ gặp lỗi hostname => Thêm `config.hosts << ...` vào file `config/environments/development.rb`
