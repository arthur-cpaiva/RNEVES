const btn = document.querySelectorAll('.toggle-btn')
const sidebar = document.querySelectorAll('.sidebar')

btn.addEventListener('click', () => {
    sidebar.classlist.toggle('collapsed')

});