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
    using System.ComponentModel.DataAnnotations;
    
    public partial class session
    {
        public session()
        {
            this.ticket = new HashSet<ticket>();
        }

        public int cinema_id { get; set; }

        public int film_id { get; set; }

        [Display(Name = "Начало сеанса")]
        public System.DateTime start_time { get; set; }

        [Display(Name = "Стоимость билета")]
        public int ticket_cost { get; set; }

        public virtual cinema cinema { get; set; }

        public virtual film film { get; set; }
        public virtual ICollection<ticket> ticket { get; set; }
    }
}
