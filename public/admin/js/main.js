const account = document.querySelector('.main__account')
const accountUl = document.querySelector('.account__ul')

account.addEventListener('click', function(){
    accountUl.classList.toggle('active-display')
})

