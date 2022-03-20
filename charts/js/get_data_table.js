'use strict';

//// DOM elements
const table = document.querySelector('#table');
const pagination = document.querySelector('.pagination');
const row = document.querySelector('#row');

let currentPage = 1;

const init = (() => {
  //// Init state
  const state = {
    page: 1,
    nop: 5,
    window: 5,
    totalPage: 0,
  };
  state.distance = Math.floor(state.window / 2);

  //// Ajax
  const timeout = function (sec) {
    return new Promise((_, reject) =>
      setTimeout(() => reject(new Error('Request took too long!')), sec * 1000)
    );
  };
  //
  const ajaxSearch = async function (page) {
    try {
      const url = './process/get_table_values.php';
      const options = {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({ page }),
      };
      //// Response
      const res = await Promise.race([fetch(url, options), this.timeout(5)]);

      if (!res.ok) throw new Error(`${res.statusText} (${res.status})`);

      //// Data
      const dataArray = await res.json();

      //// Clear Table
      while (row.nextElementSibling) {
        row.nextElementSibling.remove();
      }
      const errorMess = document.querySelector('.table__error--message');
      if (errorMess) errorMess.remove();

      // console.log(data);
      //// Assign state
      const info = dataArray[1];
      state.totalPage = info.total_page;
      if (currentPage > info.total_page) currentPage = info.total_page;
      state.page = currentPage;
      state.nop = info.nop;
      state.window = info.window;

      //// Data
      const data = dataArray[0];
      if (data.length === 0) {
        this.renderError('Không có kết quả');
      }

      //// Render pagination
      this.renderPagination(state.totalPage, state.nop);

      //// Render Table
      this.renderTable(data);
    } catch (err) {
      console.log(err);
      this.renderError(err.message);
    }
  };

  //// Renders
  // Render Pagination
  const renderPagination = function () {
    let minLeft = state.page - state.distance;
    let maxRight = state.page + state.distance;

    if (minLeft < 1) {
      minLeft = 1;
      maxRight = state.window;
    }

    if (maxRight > state.totalPage) {
      maxRight = state.totalPage;

      minLeft = maxRight - (state.window - 1);
      if (minLeft < 1) {
        minLeft = 1;
      }
    }

    // Render
    let paginationHTML = '';
    for (let i = minLeft; i <= maxRight; ++i) {
      paginationHTML += `
        <button class="btn__page ${
          i === +state.page ? 'btn__page--active' : ''
        }" data-page="${i}">
        ${i}
        </button>
      `;
    }

    // First button
    if (state.page > 1 + state.distance) {
      paginationHTML =
        `<button class="btn__page btn__page--special" data-page="1">&#171; First</button>` +
        paginationHTML;
    }

    // Last button
    if (state.page < state.totalPage - state.distance) {
      paginationHTML += `<button class="btn__page btn__page--special" data-page="${state.totalPage}">Last &#187;</button>`;
    }

    pagination.innerHTML = paginationHTML;
  };
  // Render Table
  const renderTable = function (data) {
    let html = '';
    data.forEach(function (item) {
      html += `
        <tr>
          <td>${item.ten_hang}</td>
          <td>${item.so_luong_da_ban}</td>
          <td>${item.so_luong_ton}</td>
        </tr>
      `;
    });
    row.insertAdjacentHTML('afterend', html);
  };

  const renderError = function (message) {
    const p = document.createElement('p');
    p.className = 'table__error--message';
    p.textContent = message;
    table.appendChild(p);
  };

  //// Start
  const start = function () {
    this.ajaxSearch(1);
  };

  return {
    timeout,
    ajaxSearch,
    renderPagination,
    renderTable,
    renderError,
    start,
  };
})();

init.start();

//// Event handlers
// Pagination
pagination.addEventListener('click', function (e) {
  const btnPages = e.target.closest('.btn__page');
  if (!btnPages) return;

  let page = +btnPages.dataset.page;
  if (!isFinite(page)) page = Number.parseInt(page) || 1;
  currentPage = page;

  init.ajaxSearch(currentPage);
});
