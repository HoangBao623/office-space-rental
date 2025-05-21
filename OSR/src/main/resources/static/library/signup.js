// Xử lý gửi form đăng ký
// Xử lý gửi form đăng ký
document.getElementById("signup").addEventListener("submit", async function(e) {
    e.preventDefault();
    const formData = new FormData(this);
    const data = Object.fromEntries(formData);

    // Xóa trường password2 (không cần gửi lên backend)
    // delete data.password2;

    try {
        // const submitBtn = document.querySelector('button[type="submit"]');
        // submitBtn.disabled = true;
        // submitBtn.innerHTML = 'Đang xử lý...';

        const response = await fetch(`/signup`, {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify(data),
        });

        if (!response.ok) {
            const errorText = await response.text();
            console.error("Lỗi máy chủ:", errorText);
            alert(`Lỗi: ${response.status} - ${response.statusText}`);
            return;
        }

        const contentType = response.headers.get("Content-Type");
        if (contentType && contentType.includes("application/json")) {
            const result = await response.json();
            alert(`Thông báo: ${result.notification}`);
            window.location.href = "/login";
        } else {
            console.error("Kiểu phản hồi không mong đợi:", contentType);
            alert("Lỗi: Máy chủ không trả về JSON");
        }
    } catch (err) {
        console.error("Lỗi không mong đợi:", err);
        alert("Đã xảy ra lỗi không mong đợi!");
    }
    //  finally {
    //     submitBtn.disabled = false;
    //     submitBtn.innerHTML = 'Đăng ký';
    // }
});

// Xử lý ngày sinh
document.addEventListener('DOMContentLoaded', function() {
    const dateInput = document.getElementById('dOB');

    // Đặt ngày tối đa là ngày hiện tại - 18 năm
    const today = new Date();
    const maxDate = new Date(
        today.getFullYear() - 18,
        today.getMonth(),
        today.getDate()
    ).toISOString().split('T')[0];

    // Đặt ngày tối thiểu là ngày hiện tại - 100 năm
    const minDate = new Date(
        today.getFullYear() - 100,
        today.getMonth(),
        today.getDate()
    ).toISOString().split('T')[0];

    dateInput.setAttribute('max', maxDate);
    dateInput.setAttribute('min', minDate);

    // Định dạng ngày khi thay đổi
    dateInput.addEventListener('change', function() {
        if (this.value) {
            const date = new Date(this.value);
            const formattedDate = date.toLocaleDateString('vi-VN', {
                day: '2-digit',
                month: '2-digit',
                year: 'numeric'
            });
            this.setAttribute('data-date', formattedDate);
        }
    });
});

// Hàm hiển thị/ẩn mật khẩu
function showPassword(event) {
    const input = event.target.closest('.input').querySelector('input');
    if (input.type === 'password') {
        input.type = 'text';
        event.target.setAttribute('name', 'eye-off-outline');
    } else {
        input.type = 'password';
        event.target.setAttribute('name', 'eye-outline');
    }
}

function showPassword2(event) {
    showPassword(event);
}