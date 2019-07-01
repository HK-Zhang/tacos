using IdentityServer4.Models;
using IdentityServer4.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Tacos.Identity.Service2
{
    public class CustomProfileService : IProfileService
    {

        public Task GetProfileDataAsync(ProfileDataRequestContext context)
        {
            if (context.RequestedClaimTypes.Any())
            {
                context.AddRequestedClaims(context.Subject.Claims);

                //According to requestedresource to load realted claim
                //if(context.RequestedResources.ApiResources.First().Name == "api")
                //{
                //    context.AddRequestedClaims(context.Subject.Claims);
                //}
            }
            return Task.CompletedTask;
        }

        public Task IsActiveAsync(IsActiveContext context)
        {
            return Task.CompletedTask;
        }
    }
}
