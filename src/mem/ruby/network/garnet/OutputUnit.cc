/*
 * Copyright (c) 2020 Inria
 * Copyright (c) 2016 Georgia Institute of Technology
 * Copyright (c) 2008 Princeton University
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are
 * met: redistributions of source code must retain the above copyright
 * notice, this list of conditions and the following disclaimer;
 * redistributions in binary form must reproduce the above copyright
 * notice, this list of conditions and the following disclaimer in the
 * documentation and/or other materials provided with the distribution;
 * neither the name of the copyright holders nor the names of its
 * contributors may be used to endorse or promote products derived from
 * this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 * A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
 * OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */


#include "mem/ruby/network/garnet/OutputUnit.hh"

#include "debug/RubyNetwork.hh"
#include "mem/ruby/network/garnet/Credit.hh"
#include "mem/ruby/network/garnet/CreditLink.hh"
#include "mem/ruby/network/garnet/Router.hh"
#include "mem/ruby/network/garnet/flitBuffer.hh"
#include <random>

static std::vector<int> vec1(1000, 0);
static std::vector<int> vec2(1000, 0);
static std::vector<int> vec3(1000, 0);
static std::vector<int> vec4(1000, 0);
static std::vector<int> vec5(1000, 0);
static std::vector<int> vec6(1000, 0);
static std::vector<int> vec7(1000, 0);
static std::vector<int> vec8(1000, 0);

static std::vector<int> vec9(1000, 0);
static std::vector<int> vec10(1000, 0);
static std::vector<int> vec11(1000, 0);
static std::vector<int> vec12(1000, 0);
static std::vector<int> vec13(1000, 0);
static std::vector<int> vec14(1000, 0);
static std::vector<int> vec15(1000, 0);
static std::vector<int> vec16(1000, 0);


namespace gem5
{

namespace ruby
{

namespace garnet
{
    std::vector<int> OutputUnit::vc_withheld_count;  // Definition

OutputUnit::OutputUnit(int id, PortDirection direction, Router *router,
  uint32_t consumerVcs)
  : Consumer(router), m_router(router), m_id(id), m_direction(direction),
    m_vc_per_vnet(consumerVcs)
{
    const int m_num_vcs = consumerVcs * m_router->get_num_vnets();
    outVcState.reserve(m_num_vcs);
    for (int i = 0; i < m_num_vcs; i++) {
        outVcState.emplace_back(i, m_router->get_net_ptr(), consumerVcs);
    }
}

void
OutputUnit::decrement_credit(int out_vc)
{
    DPRINTF(RubyNetwork, "Router %d OutputUnit %s decrementing credit:%d for "
            "outvc %d at time: %lld for %s\n", m_router->get_id(),
            m_router->getPortDirectionName(get_direction()),
            outVcState[out_vc].get_credit_count(),
            out_vc, m_router->curCycle(), m_credit_link->name());

    outVcState[out_vc].decrement_credit();
}

void
OutputUnit::increment_credit(int out_vc)
{
    DPRINTF(RubyNetwork, "Router %d OutputUnit %s incrementing credit:%d for "
            "outvc %d at time: %lld from:%s\n", m_router->get_id(),
            m_router->getPortDirectionName(get_direction()),
            outVcState[out_vc].get_credit_count(),
            out_vc, m_router->curCycle(), m_credit_link->name());

            
    // ---------------------------------------- Baseline Simulation ----------------------------------------
    outVcState[out_vc].increment_credit();

    // ---------------------------------------- 4 * 4 TCMP ----------- 1 HT ----------------------------------------

    // int temp = m_router->get_id();
    // if(temp == 5 && vec1[out_vc] <= 1){
    //     vec1[out_vc]++;
    // }
    // else if(temp == 7 && vec2[out_vc] <= 1){
    //     vec2[out_vc]++;
    // }
    // else if(temp == 10 && vec3[out_vc] <= 1){
    //     vec3[out_vc]++;
    // }
    // else if(temp == 2 && vec4[out_vc] <= 1){
    //     vec4[out_vc]++;
    // }
    // else{
    //     outVcState[out_vc].increment_credit();
    // }

    // std::random_device rd; // Obtain a random number from hardware
    // std::mt19937 gen(rd()); // Seed the generator
    // std::uniform_int_distribution<> distr(1, 500); // Range [1, 100]
    // int random_number = distr(gen);

    // if(random_number <= 1){
    //     int temp = m_router->get_id();
    //     if(temp == 5 && (out_vc >= 4 && out_vc <= 7) && vec1[out_vc] <= 1){
    //         vec1[out_vc]++;
    //     }
    //     else if(temp == 7 && (out_vc >= 0 && out_vc <= 3) && vec2[out_vc] <= 1){
    //         vec2[out_vc]++;
    //     }
    //     else if(temp == 10 && (out_vc >= 8 && out_vc <= 11) && vec3[out_vc] <= 1){
    //         vec3[out_vc]++;
    //     }
    //     else if(temp == 2 && (out_vc >= 12 && out_vc <= 15) && vec4[out_vc] <= 1){
    //         vec4[out_vc]++;
    //     }
    //     else if(temp == 9 && (out_vc >= 0 && out_vc <= 3) && vec2[out_vc] <= 1){
    //         vec2[out_vc]++;
    //     }
    //     else if(temp == 12 && (out_vc >= 8 && out_vc <= 11) && vec3[out_vc] <= 1){
    //         vec3[out_vc]++;
    //     }
    //     else if(temp == 4 && (out_vc >= 12 && out_vc <= 15) && vec4[out_vc] <= 1){
    //         vec4[out_vc]++;
    //     }
    //     else{
    //         outVcState[out_vc].increment_credit();
    //     }
    // }
    // else{
    //     outVcState[out_vc].increment_credit();
    // }


    // ---------------------------------------- 4 * 4 TCMP ----------- 2 HT ----------------------------------------

    // int temp = m_router->get_id();
    // if(temp == 5 && vec1[out_vc] <= 2){
    //     vec1[out_vc]++;
    // }
    // else if(temp == 7 && vec2[out_vc] <= 2){
    //     vec2[out_vc]++;
    // }
    // else if(temp == 10 && vec3[out_vc] <= 2){
    //     vec3[out_vc]++;
    // }
    // else if(temp == 2 && vec4[out_vc] <= 2){
    //     vec4[out_vc]++;
    // }
    // else if(temp == 12 && vec5[out_vc] <= 2){
    //     vec5[out_vc]++;
    // }
    // else if(temp == 4 && vec4[out_vc] <= 2){
    //     vec4[out_vc]++;
    // }
    // else if(temp == 9 && vec7[out_vc] <= 2){
    //     vec7[out_vc]++;
    // }
    // else{
    //     outVcState[out_vc].increment_credit();
    // }


    // ---------------------------------------- 8 * 8 TCMP ----------- 1 HT ----------------------------------------

    // int temp = m_router->get_id();
    // if(temp == 34 && vec1[out_vc] <= 2){
    //     vec1[out_vc]++;
    // }
    // else if(temp == 43 && vec2[out_vc] <= 2){
    //     vec2[out_vc]++;
    // }
    // else if(temp == 36 && vec3[out_vc] <= 2){
    //     vec3[out_vc]++;
    // }
    // else if(temp == 27 && vec4[out_vc] <= 2){
    //     vec4[out_vc]++;
    // }
    // else{
    //     outVcState[out_vc].increment_credit();
    // }

    
    // ---------------------------------------- 8 * 8 TCMP ----------- 2 HT ----------------------------------------

    // int temp = m_router->get_id();
    // if(temp == 34 && vec1[out_vc] <= 2){
    //     vec1[out_vc]++;
    // }
    // else if(temp == 43 && vec2[out_vc] <= 2){
    //     vec2[out_vc]++;
    // }
    // else if(temp == 36 && vec3[out_vc] <= 2){
    //     vec3[out_vc]++;
    // }
    // else if(temp == 27 && vec4[out_vc] <= 2){
    //     vec4[out_vc]++;
    // }
    // else if(temp == 13 && vec1[out_vc] <= 2){
    //     vec5[out_vc]++;
    // }
    // else if(temp == 20 && vec2[out_vc] <= 2){
    //     vec6[out_vc]++;
    // }
    // else if(temp == 29 && vec3[out_vc] <= 2){
    //     vec7[out_vc]++;
    // }
    // else if(temp == 22 && vec4[out_vc] <= 2){
    //     vec8[out_vc]++;
    // }
    // else{
    //     outVcState[out_vc].increment_credit();
    // }

    // --------------------------------------------------------------------------------------------------------

    // std::random_device rd; // Obtain a random number from hardware
    // std::mt19937 gen(rd()); // Seed the generator
    // std::uniform_int_distribution<> distr(1, 100); // Range [1, 100]
    // int random_number = distr(gen);
    // std::cout<<"Simulation"<<std::endl;

    // if(random_number <= 5){
    //         // int temp = m_router->get_id();
    //         if(temp == 34 && (out_vc == 2) && vec1[out_vc] <= 1){
    //             vec1[out_vc]++;
    //         }
    //         else if(temp == 34 && (out_vc == 1) && vec2[out_vc] <= 1){
    //             vec2[out_vc]++;
    //         }
        // if(temp == 34 && (out_vc >= 4 && out_vc <= 7) && vec1[out_vc] <= 1){
        //     vec1[out_vc]++;
        // }
        // else if(temp == 43 && (out_vc >= 0 && out_vc <= 3) && vec2[out_vc] <= 1){
        //     vec2[out_vc]++;
        // }
        // else if(temp == 36 && (out_vc >= 8 && out_vc <= 11) && vec3[out_vc] <= 1){
        //     vec3[out_vc]++;
        // }
        // else if(temp == 27 && (out_vc >= 12 && out_vc <= 15) && vec4[out_vc] <= 1){
        //     vec4[out_vc]++;
        // }
        // else if(temp == 13 && (out_vc >= 4 && out_vc <= 7) && vec5[out_vc] <= 1){
        //     vec5[out_vc]++;
        // }
        // else if(temp == 20 && (out_vc >= 0 && out_vc <= 3) && vec6[out_vc] <= 1){
        //     vec6[out_vc]++;
        // }
        // else if(temp == 29 && (out_vc >= 8 && out_vc <= 11) && vec7[out_vc] <= 1){
        //     vec7[out_vc]++;
        // }
        // else if(temp == 22 && (out_vc >= 12 && out_vc <= 15) && vec8[out_vc] <= 1){
        //     vec8[out_vc]++;
        // }
        // else{
        //     outVcState[out_vc].increment_credit();
        // }
    //     else{
    //         outVcState[out_vc].increment_credit();    
    //     }
    // }
    // else{
    //     outVcState[out_vc].increment_credit();
    // }


    // ---------------------------------------- 8 * 8 TCMP ----------- 3 HT ----------------------------------------

    // int temp = m_router->get_id();
    // if(temp == 41 && vec1[out_vc] <= 2){
    //     vec1[out_vc]++;
    // }
    // else if(temp == 50 && vec2[out_vc] <= 2){
    //     vec2[out_vc]++;
    // }
    // else if(temp == 43 && vec3[out_vc] <= 2){
    //     vec3[out_vc]++;
    // }
    // else if(temp == 34 && vec4[out_vc] <= 2){
    //     vec4[out_vc]++;
    // }
    // ///////////////////////////
    // else if(temp == 44 && vec1[out_vc] <= 2){
    //     vec5[out_vc]++;
    // }
    // else if(temp == 53 && vec2[out_vc] <= 2){
    //     vec6[out_vc]++;
    // }
    // else if(temp == 46 && vec3[out_vc] <= 2){
    //     vec7[out_vc]++;
    // }
    // else if(temp == 37 && vec4[out_vc] <= 2){
    //     vec8[out_vc]++;
    // }
    // ///////////////////////////////
    // else if(temp == 20 && vec1[out_vc] <= 2){
    //     vec9[out_vc]++;
    // }
    // else if(temp == 29 && vec2[out_vc] <= 2){
    //     vec10[out_vc]++;
    // }
    // else if(temp == 22 && vec3[out_vc] <= 2){
    //     vec11[out_vc]++;
    // }
    // else if(temp == 13 && vec4[out_vc] <= 2){
    //     vec12[out_vc]++;
    // }
    // else{
    //     outVcState[out_vc].increment_credit();
    // }

}

// Check if the output VC (i.e., input VC at next router)
// has free credits (i..e, buffer slots).
// This is tracked by OutVcState
bool
OutputUnit::has_credit(int out_vc)
{
    assert(outVcState[out_vc].isInState(ACTIVE_, curTick()));
    return outVcState[out_vc].has_credit();
}


// Check if the output port (i.e., input port at next router) has free VCs.
bool
OutputUnit::has_free_vc(int vnet)
{
    int vc_base = vnet*m_vc_per_vnet;
    for (int vc = vc_base; vc < vc_base + m_vc_per_vnet; vc++) {
        if (is_vc_idle(vc, curTick()))
            return true;
    }

    return false;
}

// Assign a free output VC to the winner of Switch Allocation
int
OutputUnit::select_free_vc(int vnet)
{
    int vc_base = vnet*m_vc_per_vnet;
    // int rid = m_router->get_id();
    // std::cout << "For "<<rid<<", vc_base = "<<vc_base<<" and vc_base+m_vc_per_vnet = "<<vc_base+m_vc_per_vnet<<std::endl;
    for (int vc = vc_base; vc < vc_base + m_vc_per_vnet; vc++) {
        if (is_vc_idle(vc, curTick())) {
            outVcState[vc].setState(ACTIVE_, curTick());
            return vc;
        }
    }

    return -1;
}

/*
 * The wakeup function of the OutputUnit reads the credit signal from the
 * downstream router for the output VC (i.e., input VC at downstream router).
 * It increments the credit count in the appropriate output VC state.
 * If the credit carries is_free_signal as true,
 * the output VC is marked IDLE.
 */

void
OutputUnit::wakeup()
{
    if (m_credit_link->isReady(curTick())) {
        Credit *t_credit = (Credit*) m_credit_link->consumeLink();
        increment_credit(t_credit->get_vc());

        if (t_credit->is_free_signal())
            set_vc_state(IDLE_, t_credit->get_vc(), curTick());

        delete t_credit;

        if (m_credit_link->isReady(curTick())) {
            scheduleEvent(Cycles(1));
        }
    }
}

flitBuffer*
OutputUnit::getOutQueue()
{
    return &outBuffer;
}

void
OutputUnit::set_out_link(NetworkLink *link)
{
    m_out_link = link;
}

void
OutputUnit::set_credit_link(CreditLink *credit_link)
{
    m_credit_link = credit_link;
}

void
OutputUnit::insert_flit(flit *t_flit)
{
    outBuffer.insert(t_flit);
    m_out_link->scheduleEventAbsolute(m_router->clockEdge(Cycles(1)));
}

uint32_t
OutputUnit::functionalWrite(Packet *pkt)
{
    return outBuffer.functionalWrite(pkt);
}

} // namespace garnet
} // namespace ruby
} // namespace gem5
