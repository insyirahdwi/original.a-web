// cart.js
function updateCartBadge() {
  const count = parseInt(localStorage.getItem('oa_cart_count') || '0', 10);
  document.querySelectorAll('a[title="Keranjang"] .nav-badge').forEach(b => {
    b.textContent = count;
    b.style.display = count > 0 ? 'flex' : 'none';
  });
}

// Ensure it runs dynamically
document.addEventListener('DOMContentLoaded', updateCartBadge);
updateCartBadge();
