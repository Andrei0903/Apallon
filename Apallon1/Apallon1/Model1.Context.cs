﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Apallon1
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class SuperShopEntities1 : DbContext
    {

        private static SuperShopEntities1 _context;

        public SuperShopEntities1()
            : base("name=SuperShopEntities1")
        {
        }

        public static SuperShopEntities1 Getcontext()
        {
            if (_context == null)
                _context = new SuperShopEntities1();
            return _context;
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<Администрация> Администрация { get; set; }
        public virtual DbSet<Клиенты> Клиенты { get; set; }
        public virtual DbSet<Покупка> Покупка { get; set; }
        public virtual DbSet<Поставка> Поставка { get; set; }
        public virtual DbSet<Поставщик> Поставщик { get; set; }
        public virtual DbSet<Товар> Товар { get; set; }
    }
}
