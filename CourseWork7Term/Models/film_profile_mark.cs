//------------------------------------------------------------------------------
// <auto-generated>
//    Этот код был создан из шаблона.
//
//    Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//    Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CourseWork7Term.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class film_profile_mark
    {
        public int mark_id { get; set; }
        public int profile_id { get; set; }
        public int film_id { get; set; }
    
        public virtual film film { get; set; }
        public virtual mark mark { get; set; }
        public virtual profile profile { get; set; }
    }
}
