const body = document.querySelector('body'),
  sidebar = body.querySelector('nav'),
  toggle = body.querySelector('.toggle'),
  searchBtn = body.querySelector('.search-box'),
  modeSwitch = body.querySelector('.toggle-switch'),
  modeText = body.querySelector('.mode-text');

toggle.addEventListener('click', () => {
  sidebar.classList.toggle('close');
});

searchBtn.addEventListener('click', () => {
  sidebar.classList.remove('close');
});

modeSwitch.addEventListener('click', () => {
  body.classList.toggle('dark');

  if (body.classList.contains('dark')) {
    modeText.innerText = 'Light mode';
  } else {
    modeText.innerText = 'Dark mode';
  }
});

function hien1 () {
  var a = document.querySelectorAll('.hide-user');
  var b = a[0].style.display;
  if (b == '' || b == 'none') {
    a.forEach((item) => {
      item.style.display = 'block';
    });
  } else {
    a.forEach((item) => {
      item.style.display = 'none';
    });
  }
};
function hien2 () {
  var a = document.querySelectorAll('.hide-roots');
  var b = a[0].style.display;
  if (b == '' || b == 'none') {
    a.forEach((item) => {
      item.style.display = 'block';
    });
  } else {
    a.forEach((item) => {
      item.style.display = 'none';
    });
  }
};
function hien3 () {
  var a = document.querySelectorAll('.hide-list');
  var b = a[0].style.display;
  if (b == '' || b == 'none') {
    a.forEach((item) => {
      item.style.display = 'block';
    });
  } else {
    a.forEach((item) => {
      item.style.display = 'none';
    });
  }
};
