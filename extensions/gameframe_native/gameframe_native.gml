#define gameframe_mouse_in_window
var _buf = gameframe_prepare_buffer(1);
return gameframe_mouse_in_window_raw(buffer_get_address(_buf), 1);

#define gameframe_init_raw
var _buf = gameframe_prepare_buffer(8);
buffer_write(_buf, buffer_u64, int64(window_handle()));
gameframe_init_raw_raw(buffer_get_address(_buf), 8);

#define gameframe_syscommand
var _buf = gameframe_prepare_buffer(8);
buffer_write(_buf, buffer_f64, argument0);
gameframe_syscommand_raw(buffer_get_address(_buf), 8);

#define gameframe_get_monitors_1
var _buf = gameframe_prepare_buffer(1);
return gameframe_get_monitors_1_raw(buffer_get_address(_buf), 1);

#define gameframe_get_double_click_time
var _buf = gameframe_prepare_buffer(1);
return gameframe_get_double_click_time_raw(buffer_get_address(_buf), 1);

#define gameframe_is_natively_minimized
var _buf = gameframe_prepare_buffer(1);
return gameframe_is_natively_minimized_raw(buffer_get_address(_buf), 1);

#define gameframe_init_native
gameframe_init_raw();

#define gameframe_get_monitors
var _list = (argument_count > 0) ? argument[0] : undefined;
var _count = gameframe_get_monitors_1();
var _buf = gameframe_prepare_buffer(_count * 36);
if (!gameframe_get_monitors_2(buffer_get_address(_buf)))
{
    return (_list == undefined) ? array_create(0) : 0;
}
var _use_array = _list == undefined;
var _array;
if (_use_array)
{
    _array = array_create(_count);
}
buffer_seek(_buf, buffer_seek_start, 0);
for (var _ind = 0; _ind < _count; _ind++)
{
    if (_use_array)
    {
        _mntr = array_create(4);
        _work = array_create(4);
        _item = [_mntr, _work, 0];
        _array[_ind] = _item;
    }
    else
    {
        _item = ds_list_find_value(_list, _ind);
        if (_item == undefined)
        {
            _mntr = array_create(4);
            _work = array_create(4);
            _item = [_mntr, _work, 0];
            ds_list_set(_list, _ind, _item);
        }
        else
        {
            _mntr = _item[0];
            _work = _item[1];
        }
    }
    var _mntr;
    _mntr[0] = buffer_read(_buf, buffer_s32);
    _mntr[1] = buffer_read(_buf, buffer_s32);
    _mntr[2] = buffer_read(_buf, buffer_s32);
    _mntr[3] = buffer_read(_buf, buffer_s32);
    var _work;
    _work[0] = buffer_read(_buf, buffer_s32);
    _work[1] = buffer_read(_buf, buffer_s32);
    _work[2] = buffer_read(_buf, buffer_s32);
    _work[3] = buffer_read(_buf, buffer_s32);
    var _item;
    _item[2] = buffer_read(_buf, buffer_s32);
}
return _use_array ? _array : _count;

#define gameframe_prepare_buffer
var _size = argument0;
var _buf = global.__gameframe_buffer;
if (_buf == undefined)
{
    _buf = buffer_create(_size, buffer_grow, 1);
    global.__gameframe_buffer = _buf;
}
else if (buffer_get_size(_buf) < _size)
{
    buffer_resize(_buf, _size);
}
buffer_seek(_buf, buffer_seek_start, 0);
return _buf;

#define gameframe_buffer_read_chars
var _buf = argument0;
var _len = argument1;
var _tmp = global.__ggpo_string_buffer;
if (_tmp == undefined)
{
    _tmp = buffer_create(_len + 1, buffer_grow, 1);
    global.__ggpo_string_buffer = _tmp;
}
else if (buffer_get_size(_tmp) <= _len)
{
    buffer_resize(_tmp, _len + 1);
}
buffer_copy(_buf, buffer_tell(_buf), _len, _tmp, 0);
buffer_seek(_buf, buffer_seek_relative, _len);
buffer_poke(_tmp, _len, buffer_u8, 0);
buffer_seek(_tmp, buffer_seek_start, 0);
return buffer_read(_tmp, buffer_string);
