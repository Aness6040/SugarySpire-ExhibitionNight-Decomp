function scribble(arg0, arg1 = undefined)
{
    static _ecache_dict = __scribble_initialize().__cache_state.__ecache_dict;
    
    if (is_struct(arg0) && instanceof(arg0) == "__scribble_class_element")
    {
        __scribble_error("scribble() should not be used to access/draw text elements\nPlease instead call the .draw() method on a text element e.g. scribble(\"text\").draw(x, y);");
        exit;
    }
    
    var _weak = variable_struct_get(_ecache_dict, string(arg0) + ((arg1 == undefined) ? ":default" : (":" + string(arg1))));
    
    if (_weak == undefined || !weak_ref_alive(_weak) || _weak.ref.__flushed)
        return new __scribble_class_element(string(arg0), arg1);
    else
        return _weak.ref;
}
