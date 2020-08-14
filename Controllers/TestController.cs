using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Test.Entities;
using Test.Entities.Model;

namespace TestAPI.Controllers
{
    [Route("api/[controller]/[action]")]
    [ApiController]
    public class TestController : ControllerBase
    {
        ITest _ITest;
        public TestController(ITest test)
        {
            _ITest = test;
        }

        [HttpGet]
        [Route("api/Test/ItemsByName")]
        public List<ItemRespone> ItemsByName(string itemName)
        {
            return _ITest.ItemsByName(itemName);
        }
        [HttpDelete]
        [Route("api/Test/DeleteCategory")]
        public bool DeleteCategory(string categoryName)
        {
            return _ITest.DeleteCategory(categoryName);
        }
    }
}
