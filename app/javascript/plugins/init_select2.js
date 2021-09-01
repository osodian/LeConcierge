import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  $('.select2').select2({ width: '100%', height: '40%' });
};

export { initSelect2 };
